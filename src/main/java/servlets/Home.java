package servlets;

import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;

import static utils.PasswordEncrypting.encrypt;
import static utils.SessionRetrieval.getSessionUser;
import static utils.Validating.validateUser;


@WebServlet(name = "Home", urlPatterns = {"/Home"})
public class Home extends Servlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        if (session.getAttribute("email") != null) {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email").toLowerCase();
        String password = encrypt(request.getParameter("password"));

        if (validateUser(email, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);

            User user = getSessionUser(request);
            session.setAttribute("user", user);

            response.sendRedirect("UserProfile?message=" + URLEncoder.encode("Welcome to AMV!", "UTF-8"));
        } else {
            response.sendRedirect("index.jsp?errorMessage=" + URLEncoder.encode("Incorrect email or password! Try again", "UTF-8"));
        }
    }
}
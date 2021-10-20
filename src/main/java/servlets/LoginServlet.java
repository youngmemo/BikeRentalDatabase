package servlets;


import utils.Validation;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends Servlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            super.setCSRF(request);
            request.getRequestDispatcher("login.jsp").forward(request, response);




    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if(super.verifiyCSRF(request)){

                String email = (String) request.getParameter("email");
                String password = (String) request.getParameter("password");
                HttpSession session = request.getSession();
                if(Validation.validateUser(email, password)){
                    session.setAttribute("email", email);
                    session.setAttribute("error", null);
                    response.sendRedirect("/home");
                }else{
                    session.setAttribute("error", "Incorrect email or password");
                    session.setAttribute("email", null);
                    request.getRequestDispatcher("login.jsp").forward(request, response);

                }

        }



    }

}

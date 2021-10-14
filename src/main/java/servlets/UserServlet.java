package servlets;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.net.URLEncoder;




@WebServlet(name = "UserServlet", urlPatterns = {"/user"})
public class UserServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        System.out.println(session.getAttribute("name"));
        Cookie uiColorCookie = new Cookie("color", "red");
        response.addCookie(uiColorCookie);
        request.getRequestDispatcher("user.jsp").forward(request, response);

    }
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        }

    }

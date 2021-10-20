package servlets;


import utils.DBUtils;
import utils.Validating;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(name = "IndexServlet", urlPatterns = {""})
public class IndexServlet extends Servlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("index.jsp").forward(request, response);


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.setAttribute("email", null);
        response.sendRedirect("/");
    }

}

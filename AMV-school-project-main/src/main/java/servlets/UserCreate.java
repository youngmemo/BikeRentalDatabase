package servlets;

import utils.DbTool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static utils.PasswordEncrypting.encrypt;
import static utils.SessionRetrieval.isSuperUser;
import static utils.Validating.validateEmail;
import static utils.Validating.validatePassword;


@WebServlet(name = "UserCreate", urlPatterns = {"/UserCreate"})
public class UserCreate extends Servlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        if( email!= null) {
            if(isSuperUser(email)){
                request.getRequestDispatcher("userCreate.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("rentList.jsp").forward(request, response);
            }
        }else{
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = (request.getParameter("email")).toLowerCase();
        String tlf = (request.getParameter("tlf"));
        String password1 = encrypt(request.getParameter("password1"));
        String password2 = encrypt(request.getParameter("password2"));



        if (!validateEmail(email) && validatePassword(password1, password2)) {
            Connection db = null;
            PreparedStatement ps;
            try {
                db = DbTool.getINSTANCE().dbLoggIn();
                String query = "INSERT INTO amv.user (first_name, last_name, email, tlf, password, is_union, is_superuser) values (?,?,?,?,?,?,?)";
                ps = db.prepareStatement(query);

                ps.setString(1, first_name);
                ps.setString(2, last_name);
                ps.setString(3, email);
                ps.setString(4, tlf);
                ps.setString(5, password1);
                ps.setBoolean(6, false);
                ps.setBoolean(7, false);


                ps.execute();
                response.sendRedirect("UserList?message=" + URLEncoder.encode("Account is successfully created!", "UTF-8"));

            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();

            } finally {
                try {
                    assert db != null;
                    db.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else if (validateEmail(email) && validatePassword(password1, password2)) {
            response.sendRedirect("UserCreate?errorMessage=" + URLEncoder.encode("Email already in use!", "UTF-8"));
        } else if (!validateEmail(email) && !validatePassword(password1, password2)) {
            response.sendRedirect("UserCreate?errorMessage=" + URLEncoder.encode("Passwords must match!", "UTF-8"));
        } else {
            response.sendRedirect("UserCreate?errorMessage=" + URLEncoder.encode("Email already in use and Passwords must match!", "UTF-8"));
        }
    }
}

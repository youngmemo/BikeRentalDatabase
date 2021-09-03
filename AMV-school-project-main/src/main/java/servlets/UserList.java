package servlets;

import models.User;
import org.json.JSONArray;
import org.json.JSONObject;
import utils.DbTool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

@localhost

@WebServlet(name = "UserList", urlPatterns = {"/UserList"})
public class UserList extends Servlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");


        Connection db = null;
        PreparedStatement ps;
        ArrayList<User> userList = new ArrayList<>();
        try {
            db = DbTool.getINSTANCE().dbLoggIn();
            String query;
            query = "SELECT id, first_name, last_name from amv.user";
            ps = db.prepareStatement(query);
            ResultSet rs;
            rs = ps.executeQuery();
            JSONArray json = new JSONArray();
            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setFirstName(rs.getString("first_name"));

                user.setLastName(rs.getString("last_name"));

            }






            PrintWriter pw = response.getWriter();
            pw.print("hallo dette er en test");
            pw.close();
            rs.close();

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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
    }
}

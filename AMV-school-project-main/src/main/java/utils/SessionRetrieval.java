package utils;

import models.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.*;

public class SessionRetrieval {

    public static User getSessionUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String sessionEmail = (String) session.getAttribute("email");

        Connection db;
        PreparedStatement ps;
        User user = new User();
        try {
            db = DbTool.getINSTANCE().dbLoggIn();
            ResultSet rs;
            String query = "SELECT * FROM amv.user WHERE email = ?";
            ps = db.prepareStatement(query);
            ps.setString(1, sessionEmail);
            rs = ps.executeQuery();
            rs.next();
            user.setId(rs.getInt("id"));
            user.setFirstName(rs.getString("first_name"));
            user.setLastName(rs.getString("last_name"));
            user.setEmail(rs.getString("email"));
            user.setTlf(rs.getString("tlf"));
            user.set_union(rs.getBoolean("is_union"));
            user.set_superuser(rs.getBoolean("is_superuser"));

            return user;

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return user;
    }
    public static boolean isSuperUser(String email) {
        Connection db;
        PreparedStatement ps;
        try {
            db = DbTool.getINSTANCE().dbLoggIn();
            ResultSet rs;
            String query = "SELECT is_superuser FROM amv.user WHERE email = ?";
            ps = db.prepareStatement(query);
            ps.setString(1,email);
            rs = ps.executeQuery();
            return rs.next();


        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }


}

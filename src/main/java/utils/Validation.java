package utils;

import models.*;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Validation {

    public static boolean validateUser(String email, String password) {
        Connection db;
        PreparedStatement ps;
        User user = null;
        try {
            db = DBUtils.getINSTANCE().getConnection();
            String query = "SELECT password,salt FROM amv.user WHERE email = ?";
            ResultSet rs;
            ps = db.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setPassword(rs.getString("password"));
                user.setSalt(rs.getString("salt"));
            }
            if (user != null) {
                return user.getPassword().equals(SecureUtils.makePassword(password, user.getSalt()));
            }
            return false;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }


}


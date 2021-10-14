package utils;

import models.*;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Validating {


    public static boolean validateEmail(String email) {
        Connection db;
        PreparedStatement ps;
        User user = null;
        try {
            db = DBUtils.getINSTANCE().getConnection();
            String query = "SELECT email FROM amv.user WHERE email = ?";
            ResultSet rs;
            ps = db.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setEmail(rs.getString("email"));
            }
            if (user != null) {
                return user.getEmail().equals(email);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean validatePassword(String password1, String password2) {
        return password1.equals(password2);
    }


    public static boolean validateUser(String email, String password) {
        Connection db;
        PreparedStatement ps;
        User user = null;
        try {
            db = DBUtils.getINSTANCE().getConnection();
            String query = "SELECT email, password FROM amv.user WHERE email = ? AND password = ?";
            ResultSet rs;
            ps = db.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }
            if (user != null) {
                if (user.getEmail().equals(email)) {
                    return user.getPassword().equals(password);
                } else {
                    return false;
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }


}


package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DbTool {
    private static final DbTool INSTANCE = new DbTool();
    static Connection connection;
    static String localhostIP = "127.0.0.1";

    public static DbTool getINSTANCE() {
        return INSTANCE;
    }

    public Connection dbLoggIn() throws SQLException, ClassNotFoundException {
        Connection toReturn = null;
        Class.forName ("org.mariadb.jdbc.Driver");
        try {
            toReturn = (connection != null)
                    ? connection
                    : DriverManager.getConnection(
                    "jdbc:mariadb://172.17.0.1:3309/amv",
                    "root",
                    "12345");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return toReturn;
    }
}

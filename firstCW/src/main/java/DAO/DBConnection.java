package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:postgresql://localhost:5433/oris-cw1";
    private static final String USER = "postgres";
    private static final String PASSWORD = "artem_2006";

    public static Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver"); // обязательно!
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}

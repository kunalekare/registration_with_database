package Kunal; // Change to your actual package name

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL driver
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration", "root", "pass123");
    }
}

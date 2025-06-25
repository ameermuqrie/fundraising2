/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class DBConnection {
//    private static final String URL = "jdbc:mysql://localhost:3306/fundraising";
//    private static final String USER = "root";
//    private static final String PASSWORD = "admin";
    
//    private static final String URL = "jdbc:mysql://localhost:3306/fundraising";
//    private static final String USER = "root";
//    private static final String PASSWORD = "admin";
    
    private static final String JDBC_URL = "DB_URL";
    private static final String JDBC_USERNAME = "DB_USER";
    private static final String JDBC_PASSWORD = "DB_PASS";
    
    private static Connection conn = null;

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL 8+
            
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }
}


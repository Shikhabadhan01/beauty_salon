package com.beautyparlour.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/beauty_parlour"; 
    private static final String USER = "root"; 
    private static final String PASSWORD = "Shikha@8585"; 
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL Driver
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

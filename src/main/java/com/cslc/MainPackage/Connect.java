package com.cslc.MainPackage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3310/test","root","root");
            System.out.println("✅ Database connected successfully.");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ JDBC Driver not found.");
            e.printStackTrace();
        }catch (SQLException e) {
            System.out.println("❌ Error while connecting to database:");
            e.printStackTrace();
        }
        return conn;
    }
}

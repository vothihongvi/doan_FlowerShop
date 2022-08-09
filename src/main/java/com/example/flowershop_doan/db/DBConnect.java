package com.example.flowershop_doan.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnect {
    private static DBConnect instance;
    private static Connection connection;
    private static String DB_URL = "jdbc:mysql://localhost:3306/ltw_flower_shop";
    private static String DB_NAME = "root";
    private static String DB_PASS = "";

    //private constructor
    private DBConnect() {
    }

    public static DBConnect getInstance() {
        if (instance == null)
            instance = new DBConnect();
        return instance;
    }

    private void setConnection() throws SQLException, ClassNotFoundException {

            if (connection == null || connection.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(DB_URL, DB_NAME, DB_PASS);

            }

    }

    public PreparedStatement getPrepareStatement(String queryString) throws SQLException {
        try {
            setConnection();
        } catch (SQLException e) {
            System.out.println("Có lỗi..............");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection.prepareStatement(queryString);

    }



}


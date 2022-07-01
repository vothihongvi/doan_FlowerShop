package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RoleDao {
    private static RoleDao instance;

    public static RoleDao getInstance() {
        if (instance == null)
            instance = new RoleDao();
        return instance;

    }

    public int getRole(String roleName){
        String queryString = "SELECT id FROM role WHERE name=? LIMIT 1";

        try {
            PreparedStatement preparedStatement = DBConnect.getInstance().getPrepareStatement(queryString);
            preparedStatement.setString(1, roleName);

            ResultSet rs = preparedStatement.executeQuery();
            return (rs.next() ? rs.getInt(1) : 0);


        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }
}

package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.bean.Role;
import com.example.flowershop_doan.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

public class RoleDao {
    private static RoleDao instance;

    public static RoleDao getInstance() {
        if (instance == null)
            instance = new RoleDao();
        return instance;

    }

    public void setRoleCustomer(String nameRole) {

        String queryString = "INSERT INTO role VALUES(?, ?)";
        Random random = new Random();
        try {
            PreparedStatement preparedStatement = DBConnect.getInstance().getPrepareStatement(queryString);
            do {
                preparedStatement.setInt(1, random.nextInt(10));
                preparedStatement.setString(2, nameRole);
            } while (preparedStatement.executeUpdate() != 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public int getRoleCustomer(){
        String roleName = "customer";
        if (this.getRole(roleName) == -1){
            this.setRoleCustomer(roleName);
        }
        return this.getRole(roleName);
    }

    public int getRole(String roleName) {
        int result = -1;
        String queryString = "SELECT id FROM role WHERE name=? LIMIT 1";

        try {
            PreparedStatement preparedStatement = DBConnect.getInstance().getPrepareStatement(queryString);
            preparedStatement.setString(1, roleName);

            ResultSet rs = preparedStatement.executeQuery();
            result = (rs.next() ? rs.getInt(1) : result);


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}

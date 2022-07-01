package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.bean.User;
import com.example.flowershop_doan.db.DBConnect;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class UserDao {
    private static UserDao instance;

    public static UserDao getInstance() {
        if (instance == null)
            instance = new UserDao();
        return instance;

    }

    // do hash pass with sha-256
    public String hashPassword(String pass) {
        MessageDigest sha256 = null;
        try {
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(pass.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }

    }

    //doSignUp
    public User signup(String name, String phone, String pass) {
        User result = null;
        String queryString = "INSERT INTO user(name, phone, pass, createdAt, roleID) VALUES (?, ?, ?, ?, ?)";

        try {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            PreparedStatement preparedStatement = DBConnect.getInstance().getPrepareStatement(queryString);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, phone);
            preparedStatement.setString(3, hashPassword(pass));
            preparedStatement.setTimestamp(4, timestamp);
            preparedStatement.setInt(5, RoleDao.getInstance().getRole("customer"));

            if (preparedStatement.executeUpdate() == 1)
                result = new User(name, phone, pass, timestamp, RoleDao.getInstance().getRole("customer"));
            return result;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public User checkLogin(String phone, String pass){
        User result = null;
        String queryString = "SELECT * FROM user INNER JOIN role ON user.roleID = role.id WHERE phone =?";
        try {
            PreparedStatement preparedStatement = DBConnect.getInstance().getPrepareStatement(queryString);
            preparedStatement.setString(1, phone);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                result = new User();
                result.setName(rs.getString(2));
                result.setPhone(rs.getString(3));
                result.setPass(rs.getString(4));
                result.setCreateAt(rs.getTimestamp(5));
                result.setRoleID(rs.getInt(6));
            }
            if ((result != null && !result.getPhone().equals(phone)) || rs.next()) return null;
            if (!result.getPass().equals(hashPassword(pass))) return null;

            return result;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

}

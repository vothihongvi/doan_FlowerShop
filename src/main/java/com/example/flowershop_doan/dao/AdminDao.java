package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.db.DBConnect;

import java.sql.PreparedStatement;

public class AdminDao {

    private static AdminDao instance;

    public static AdminDao getInstance() {
        if (instance == null)
            instance = new AdminDao();
        return instance;

    }

    public void insertProduct(String name, String image, int priceOld,
                              int priceSell, String description, int category) {
//        String query = "INSERT INTO `product` ( name, image, price_old, `price_sell, description, category_id) VALUES (?,?,?,?,?,?)";

        String query = "INSERT INTO product ( name, image, price_old, price_sell, description,  category_id) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setInt(3, priceOld);
            ps.setInt(4, priceSell);
            ps.setString(5, description);
            ps.setInt(6, category);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void deleteProduct(String id) {
        String query = "DELETE FROM product WHERE product.id = ?";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
            System.out.println("đã xóa");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        AdminDao dao = new AdminDao();
        // dao.deleteProduct("35");
        dao.insertProduct("sdfygf", "gsdyfg", 123456, 12345, "1", 1);
    }
}


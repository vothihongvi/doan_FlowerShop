package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.db.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    Connection conn = null;// kết nối với sql
    PreparedStatement ps = null;// ném câu lệnh query sang server
    ResultSet rs = null;// nhận kết quả trả về

    public List<Product> getAllProduct() {

        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM  product ";
        try {
            ps = DBConnect.getInstance().getPrepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDate(8),
                        rs.getDate(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getAllProduct();
        for (Product p : list) {
            System.out.println(p.toString());
        }
    }
}

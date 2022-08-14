package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.bean.Category;
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

    public List<Category> getAllCategory() {

        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM category ";
        try {
            ps = DBConnect.getInstance().getPrepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDate(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<Product> getAllProductByCategory(String id) {

        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product WHERE category_id= ? ";
        try {
            ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, id);
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

    public Product getAllProductByProductID(String id) {


        String query = "SELECT * FROM product WHERE category_id= ? ";
        try {
            ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDate(8),
                        rs.getDate(9));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }

    public int getNumberPage() {
        String query = "SELECT COUNT(*) FROM product  ";
        try {
            ps = DBConnect.getInstance().getPrepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 12;
                if (total % 5 != 0){
                    countPage++;

                }
                return countPage;

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getAllProductByCategory("2");
        List<Category> list1 = dao.getAllCategory();
        for (Product p : list) {
            System.out.println(p.toString());
        }
        for (Category c : list1) {
            System.out.println(c.toString());
        }
        System.out.println("số trang là"+ dao.getNumberPage());
    }
}

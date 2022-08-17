package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.bean.Category;
import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.db.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static ProductDao instance;

    public static ProductDao getInstance() {
        if (instance == null)
            instance = new ProductDao();
        return instance;

    }

    public List<Product> getAllProduct() {

        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM  product ";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDate(8),
                        rs.getDate(9), rs.getInt(10)));
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
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ResultSet rs = ps.executeQuery();
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

    public List<Product> getAllProductByCategory(int id) {

        List<Product> list = new ArrayList<>();
            String query = "SELECT * FROM product WHERE category_id= ? ";
            try {
                PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getInt(4),
                            rs.getInt(5),
                            rs.getString(6),
                            rs.getInt(7),
                            rs.getDate(8),
                            rs.getDate(9), rs.getInt(10)));
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        return list;

    }


    public Product getAllProductByProductID(int id) {

        String query = "SELECT * FROM product WHERE id= ? ";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDate(8),
                        rs.getDate(9), rs.getInt(10));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }

    public int getNumberPage(int numItemInPage) {
        String query = "SELECT COUNT(*) FROM product  ";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = total / numItemInPage;
                if (total != 0 && total % numItemInPage != 0) {
                    countPage++;

                }
                return countPage;

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }

    public List<Product> getProductByPaging(int indexPage, int quantityItem) {
        ArrayList<Product> result = new ArrayList<>();
        String query = "SELECT * FROM product where id between ? and ?";
        try {
            PreparedStatement preparedStatement = DBConnect.getInstance().getPrepareStatement(query);
            int start = (indexPage - 1) * quantityItem + 1;
            int end = quantityItem * indexPage;
            preparedStatement.setInt(1, start);
            preparedStatement.setInt(2, end );

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                result.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDate(8),
                        rs.getDate(9), rs.getInt(10)));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
        List<Product> list = ProductDao.getInstance().getProductByPaging(2, 8);
//        List<Category> list1 = ProductDao.getInstance().getAllCategory();
        for (Product p : list) {
            System.out.println(p.toString());
        }
//        for (Category c : list1) {
//            System.out.println(c.toString());
//        }
        System.out.println("số trang là" + ProductDao.getInstance().getNumberPage(8));
    }
}

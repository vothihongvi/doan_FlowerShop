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

    // VÌ INSERT CÓ CHỈ THÊM NAME, IMAGE, PRICEOLD, PRICESELL, DESCRIPTION, CATEGORY NÊN TRONG EDIT CŨNG CHỈ EDIT NHỮNG PHẦN NÀY
    //BẮT ĐẦU PHẦN ADMIN CHO PRODUCT
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

    //id product để kiểu string hoặc int thì vào csdl đều hiểu
    public void deleteProduct(String id) {
        String query = "DELETE FROM product WHERE product.id = ?";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
            System.out.println("đã xóa_product");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void editProduct(String name, String image, int priceOld,
                            int priceSell, String description, int category, int productid) {

//        String query="UPDATE product SET name=?, image=?, price_old=?, price_sell=?, description WHERE product.id = ?";
        String query = "UPDATE product SET name= ?, image = ?, price_old = ?, price_sell =? , " +
                "description = ?,  category_id =? WHERE product.id = ?";

        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setInt(3, priceOld);
            ps.setInt(4, priceSell);
            ps.setString(5, description);
            ps.setInt(6, category);
            ps.setInt(7, productid);
            System.out.println("đã edit ");
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
// KẾT THÚC ADMIN CHO PRODUCT


    //BẮT ĐẦU PHẦN CATEGORY
    public void insertCategory(String name, String image) {
        String query = "INSERT INTO category ( name, image) VALUES (?,?)";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.executeUpdate();
            System.out.println("đã insert_category");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteCategory(int id) {
        String query = "DELETE FROM category WHERE category.id = ?";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
            System.out.println("đã xóa_product");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void editCategory(String name, String image, int cateID) {
        String query = "UPDATE category SET name = ?, image = ? WHERE category.id = ?";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setInt(3, cateID);
            ps.executeUpdate();
            System.out.println("đã edit_category");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // KẾT THÚC PHẦN CATEGORY


    public static void main(String[] args) {
        AdminDao dao = new AdminDao();
        // dao.deleteProduct("35");
        // dao.insertProduct("sdfygf", "gsdyfg", 123456, 12345, "1", 1);
        // dao.editProduct("sdfygf_đã edit", "gsdyfg_đã edit", 123, 123, "1", 1, 37);
        // dao.insertCategory("hoa đẹp 123", "ảnh hoa chưa thêm");
        //  dao.editCategory("hoa đẹp 123_đã sửa", "ảnh hoa chưa thêm_đã sửa", 7);
        // dao.deleteCategory(7);
    }
}


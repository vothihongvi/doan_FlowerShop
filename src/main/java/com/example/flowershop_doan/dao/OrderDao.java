package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.bean.Item;
import com.example.flowershop_doan.bean.Order;
import com.example.flowershop_doan.db.DBConnect;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    private static OrderDao instance;

    public static OrderDao getInstance() {
        if (instance == null)
            instance = new OrderDao();
        return instance;

    }

    //TRONG SQL SỬA LẠI ĐỂ ODER_ID THÀNH AUTO INCREMENT CÁC TRƯỜNG UPDATED_AT VÀ CREATED_AT ĐỂ NULL MẶC ĐỊNH

    public void addOrder(Order order) {

        String query = "INSERT INTO orders (id, date_delivery, period_delivery, district, name_customer, email_customer, phone_customer, content_card, note_for_staff, note_for_deliver, payments, status) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setInt(1, order.getId());
            ps.setString(2, order.getDateDelivery());
            ps.setString(3, order.getPeriodDelivery());
            ps.setString(4, order.getDistrict());
            ps.setString(5, order.getNameCustomer());
            ps.setString(6, order.getEmailCustomer());
            ps.setString(7, order.getPhoneCustomer());
            ps.setString(8, order.getContentCard());
            ps.setString(9, order.getNoteForStaff());
            ps.setString(10, order.getNoteForDeliver());
            ps.setString(11, order.getPayments());
            ps.setInt(12, order.getStatus());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}

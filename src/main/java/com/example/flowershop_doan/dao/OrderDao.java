package com.example.flowershop_doan.dao;

import com.example.flowershop_doan.db.DBConnect;

import java.sql.Date;
import java.sql.PreparedStatement;

public class OrderDao {
    private static OrderDao instance;

    public static OrderDao getInstance() {
        if (instance == null)
            instance = new OrderDao();
        return instance;

    }

    //TRONG SQL SỬA LẠI ĐỂ ODER_ID THÀNH AUTO INCREMENT CÁC TRƯỜNG UPDATED_AT VÀ CREATED_AT ĐỂ NULL MẶC ĐỊNH

    public void addOrder(Date dateDelivery, String period_delivery, int delivery_id, String name_customer, String email_customer,
                         String phone_customer, String other_contact_customer, String content_card, String note_for_staff,
                         String note_for_deliver, String payments, int status) {

        String query = "INSERT INTO `order` ( `date_delivery`, `period_delivery`, `delivery_id`, `name_customer`, `email_customer`, `phone_customer`, `other_contact_customer`, `content_card`, `note_for_staff`, `note_for_deliver`, `payments`, `status`) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setDate(1, dateDelivery);
            ps.setString(2, period_delivery);
            ps.setInt(3, delivery_id);
            ps.setString(4, name_customer);
            ps.setString(5, email_customer);
            ps.setString(6, phone_customer);
            ps.setString(7, other_contact_customer);
            ps.setString(8, content_card);
            ps.setString(9, note_for_staff);
            ps.setString(10, note_for_deliver);
            ps.setString(11, payments);
            ps.setInt(12, status);
            ps.executeUpdate();
            System.out.println("inserted order ");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void updateOrder(Date dateDelivery, String period_delivery, int delivery_id, String name_customer, String email_customer,
                            String phone_customer, String other_contact_customer, String content_card, String note_for_staff,
                            String note_for_deliver, String payments, int status,int orderID) {


        String query = "UPDATE `order` SET `date_delivery` = ?, `period_delivery` = ?, `delivery_id` = ?, " +
                "`name_customer` = ?, `email_customer` = ?, `phone_customer` = ?, " +
                "`other_contact_customer` = ?, `content_card` = ?, `note_for_staff` = ?," +
                " `note_for_deliver` = ?, `payments` = ?, `status` = ? WHERE `order`.`id` = ?";
        try {
            PreparedStatement ps = DBConnect.getInstance().getPrepareStatement(query);
            ps.setDate(1, dateDelivery);
            ps.setString(2, period_delivery);
            ps.setInt(3, delivery_id);
            ps.setString(4, name_customer);
            ps.setString(5, email_customer);
            ps.setString(6, phone_customer);
            ps.setString(7, other_contact_customer);
            ps.setString(8, content_card);
            ps.setString(9, note_for_staff);
            ps.setString(10, note_for_deliver);
            ps.setString(11, payments);
            ps.setInt(12, status);
            ps.setInt(13, orderID);

            ps.executeUpdate();
            System.out.println("updated order ");

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    public static void main(String[] args) {
        OrderDao dao = new OrderDao();
        Date date = new Date(2022, 7, 10);
//        dao.addOrder(date,"test",1,"testName","testEmail",
//                "testPhone","testContact","testContent","testStaff",
//                "testDeliver","testPayment",1);

        dao.updateOrder(date, "test 1 ", 2, "testName1", "testEmail 1",
                "testPhone 1", "testContact 1", "testContent 1", "testStaff 1",
                "testDeliver 1", "testPayment 1", 2,1);
    }
}

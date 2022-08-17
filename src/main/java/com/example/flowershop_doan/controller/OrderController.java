package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.util.Random;

@WebServlet(name = "OrderController", value = "/order")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String loiChuc = request.getParameter("message" );
        String ngayGiaoHang = request.getParameter("date-delivery" );
        String gioGiao = request.getParameter("time-receive" );
        String diaChi = request.getParameter("address-receive" );
        String quan = request.getParameter("district-receive");
        Random ran = new Random(1000);
        Order order = new Order(ran.nextInt(), ngayGiaoHang, gioGiao, diaChi, quan, "", "","","","","","", 1);
        HttpSession session = request.getSession();
        session.setAttribute("order",order);
//        response.sendRedirect("checkout");
    request.getRequestDispatcher("customer/checkout.jsp").forward(request, response);
    }
}

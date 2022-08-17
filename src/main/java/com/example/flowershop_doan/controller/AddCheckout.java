package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Order;
import com.example.flowershop_doan.dao.OrderDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCheckout", value = "/add-checkout")
public class AddCheckout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name" );
        String email = request.getParameter("email" );
        String phone = request.getParameter("phone" );
        String noteStaff = request.getParameter("note-staff" );
        String noteDeliver = request.getParameter("note-deliver");

        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        if(order == null) {
            response.getWriter().println("Đặt hàng không thành công");
        }
        else{
            order.setNameCustomer(name);
            order.setEmailCustomer(email);
            order.setPhoneCustomer(phone);
            order.setNoteForStaff(noteStaff);
            order.setAddressDelivery(noteDeliver);
            order.setPayments("Tiền mặt");
            OrderDao.getInstance().addOrder(order);
//            response.getWriter().println("Đặt hàng thành công");
            session.setAttribute("order", order);
            session.removeAttribute("cart");
            response.sendRedirect("home");
        }

    }
}

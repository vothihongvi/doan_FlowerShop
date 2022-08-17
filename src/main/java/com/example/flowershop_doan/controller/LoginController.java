package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.User;
import com.example.flowershop_doan.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    public boolean validateForm(String phone, String pass) {
        if (phone.isEmpty() || pass.isEmpty()) return false;
        if (phone.trim().length() > 11) return false;
        if (pass.length() < 5) return false;
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        String error = "";
        if (validateForm(phone, pass)) {
            User user = UserService.getInstance().checkLogin(phone, pass);
            if (user == null) {
                error = "Số điện thoại của bạn hoặc Mật khẩu không đúng, vui lòng thử lại";
                request.setAttribute("error", error);
                request.getRequestDispatcher("/customer/home.jsp").forward(request, response);
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("auth", user);
                response.sendRedirect("home");
            }

        } else {
            error = "Vui lòng nhập đúng và đầy đủ thông tin";
            request.setAttribute("error", error);
            request.getRequestDispatcher("/customer/home.jsp").forward(request, response);

        }
    }
}

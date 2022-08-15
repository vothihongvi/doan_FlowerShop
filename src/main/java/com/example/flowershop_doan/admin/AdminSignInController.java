package com.example.flowershop_doan.admin;

import com.example.flowershop_doan.bean.User;
import com.example.flowershop_doan.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminSignInController", value = "/admin-login")
public class AdminSignInController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        User user = UserService.getInstance().checkLoginAdmin(phone, pass);
        if (user != null) {
            //set session
            HttpSession session = request.getSession();
            session.setAttribute("authAdmin", user);
            response.sendRedirect("admin");
        } else {
            response.getWriter().println("Day khong phai tai khoan cua admin");
        }
    }
}

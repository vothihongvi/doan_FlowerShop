package com.example.flowershop_doan.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DashboardController", value = "/admin")
public class DashboardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //set session
        HttpSession session = request.getSession();
        if (session.getAttribute("authAdmin") == null){
            response.sendRedirect("admin/signin.jsp");
        }
        else {
            response.sendRedirect("admin/dashboard.jsp");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletDetail", value = "/detail")
public class ServletDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid = (int) Integer.parseInt(request.getParameter("pid"));

        Product p = ProductDao.getInstance().getAllProductByProductID(pid);
        String status = (p.getStatus() == 0) ? "Hết hàng": "Còn hàng";
        request.setAttribute("product", p);
        request.setAttribute("status", status);
        request.getRequestDispatcher("/customer/detailproduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

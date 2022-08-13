package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletDetail", value = "/customer/detail")
public class ServletDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pid");
        ProductDao dao = new ProductDao();
        Product product = dao.getAllProductByProductID(id);
        request.setAttribute("detail", product);
        request.getRequestDispatcher("detailproduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

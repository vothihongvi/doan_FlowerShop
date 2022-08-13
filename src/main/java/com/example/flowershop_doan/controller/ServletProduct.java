package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Category;
import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

// value = "/ServletProduct"
@WebServlet(name = "ServletProduct", value = "/product")
public class ServletProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get data from ProductDao
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getAllProduct();
//        List<Category> categoryList = dao.getAllCategory();
        //pull data to jsp
        request.setAttribute("listP", list);
//        request.setAttribute("listC", categoryList);
response.sendRedirect("customer/shop.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}

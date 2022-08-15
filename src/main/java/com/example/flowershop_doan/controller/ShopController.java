package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PagingController", value = "/shop")
public class ShopController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int cid = 0;

        String getCidIndex = request.getParameter("cid");
        if (getCidIndex != null){
            cid = Integer.parseInt(getCidIndex);
        }
        List<Product> list = null;
        if (cid == 0) {
            list =  ProductDao.getInstance().getAllProduct();
        } else {
            list = ProductDao.getInstance().getAllProductByCategory(cid);

        }
        request.setAttribute("listByCategory", list);
        request.getRequestDispatcher("/customer/shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

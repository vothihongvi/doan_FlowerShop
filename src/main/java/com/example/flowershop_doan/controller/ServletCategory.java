package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Category;
import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletCategory", value = "/customer/category")
public class ServletCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cateID = request.getParameter("cid");
        ProductDao dao = new ProductDao();
        List<Product> productList = dao.getAllProductByCategory(cateID);
//        List<Category> categoryList = dao.getAllCategory();
        //        request.setAttribute("listC", categoryList);
        request.setAttribute("listP", productList);
        request.setAttribute("tagC", cateID);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
      //  response.sendRedirect("shop.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

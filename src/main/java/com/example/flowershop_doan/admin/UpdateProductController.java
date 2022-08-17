package com.example.flowershop_doan.admin;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.util.Random;

@WebServlet(name = "UpdateProductController", value = "/update-product")
public class UpdateProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        String image = request.getParameter("image-edit");
        String name = request.getParameter("name-edit");
        String priceSell = request.getParameter("price-sell-edit");
        String priceOld = request.getParameter("price-old-edit");
        String dm = request.getParameter("danhmuc-edit");
        String description = request.getParameter("mo-ta-edit");
        Random ran = new Random();
        Product p = new Product(Integer.parseInt(pid), name, image, Integer.parseInt(priceOld),
                Integer.parseInt(priceSell), description, 4 ,new Date( System.currentTimeMillis()), new Date( System.currentTimeMillis()), Integer.parseInt(dm));
        ProductDao.getInstance().editProduct(p);
        response.sendRedirect("product-manager");
    }
}
package com.example.flowershop_doan.admin;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.util.Random;

@WebServlet(name = "AddProductController", value = "/add-product")
public class AddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String image = request.getParameter("image");
        String name = request.getParameter("name");
        String priceSell = request.getParameter("price-sell");
        String priceOld = request.getParameter("price-old");
        String dm = request.getParameter("danhmuc");
        String description = request.getParameter("mo-ta");
        Random ran = new Random();
        Product p = new Product(ran.nextInt(), name, image, Integer.parseInt(priceOld),
                Integer.parseInt(priceSell), description, 4,new Date( System.currentTimeMillis()), null, Integer.parseInt(dm));
        ProductDao.getInstance().insertProduct(p);
        response.sendRedirect("product-manager");

    }
}
package com.example.flowershop_doan.admin;

import com.example.flowershop_doan.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddProductController", value = "/admin/add-product")
public class AddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




        String name = request.getParameter("name");
        String image = request.getParameter("image");
        int priceOld = (int) Integer.parseInt(request.getParameter("priceOld"));
        int priceSell = (int) Integer.parseInt(request.getParameter("priceSell"));
        String description = request.getParameter("description");
        int category = (int) Integer.parseInt(request.getParameter("category"));
        AdminDao dao = new AdminDao();
        dao.insertProduct(name, image, priceOld, priceSell, description, category);
        response.sendRedirect("product-manager");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

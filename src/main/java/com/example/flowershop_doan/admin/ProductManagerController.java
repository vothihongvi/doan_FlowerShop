package com.example.flowershop_doan.admin;

import com.example.flowershop_doan.bean.Category;
import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductManagerController", value = "/admin/product-manager")
public class ProductManagerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getAllProduct();
        List<Category> categoryList = dao.getAllCategory();
        request.setAttribute("listP", list);
        request.setAttribute("listCC", categoryList);
        request.getRequestDispatcher("product-manager.jsp").forward(request, response);
        //response.sendRedirect("admin/product-manager.jsp");

//        for(Category category: categoryList){
//            System.out.println(category.toString());
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

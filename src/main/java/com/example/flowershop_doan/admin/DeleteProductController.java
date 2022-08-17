package com.example.flowershop_doan.admin;

import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProductController", value = "/delete-product")
public class DeleteProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
//        AdminDao dao = new AdminDao();
//        ProductDao productDao= new ProductDao();
//        List<Product>list= ProductDao.getInstance().getAllProduct();
//        request.setAttribute("listP", list);
        ProductDao.getInstance().deleteProduct(Integer.parseInt(pid));
        response.sendRedirect("product-manager");//PHẢI ĐẨY VỀ SERVLET PRODUCT-MANGER VÌ NẾU ĐẨY VỀ JSP THÌ SẼ KHÔNG CÓ DỮ LIỆU
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
package com.example.flowershop_doan.admin;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.AdminDao;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteProductController", value = "/admin/delete")
public class DeleteProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        AdminDao dao = new AdminDao();
        ProductDao productDao= new ProductDao();
        List<Product>list= productDao.getAllProduct();
        request.setAttribute("listP", list);
        dao.deleteProduct(pid);
        System.out.println("DELETED PRODUCT____");
        response.sendRedirect("product-manager");//PHẢI ĐẨY VỀ SERVLET PRODUCT-MANGER VÌ NẾU ĐẨY VỀ JSP THÌ SẼ KHÔNG CÓ DỮ LIỆU
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

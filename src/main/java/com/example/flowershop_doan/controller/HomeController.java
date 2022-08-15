package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageIndex =1;
        String getPageIndex = request.getParameter("page");
        if (getPageIndex != null){
            pageIndex = Integer.parseInt(getPageIndex);
        }

        List<Product> list = ProductDao.getInstance().getProductByPaging(pageIndex, 8);
        request.setAttribute("listPage", list);
        request.getRequestDispatcher("/customer/home.jsp").forward(request, response);

//response.sendRedirect(request.getContextPath() + "/paging");
//       response.sendRedirect("/paging");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

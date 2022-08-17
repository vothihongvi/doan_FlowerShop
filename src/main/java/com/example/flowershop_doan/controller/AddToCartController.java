package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Cart;
import com.example.flowershop_doan.bean.Item;
import com.example.flowershop_doan.bean.Product;
import com.example.flowershop_doan.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddToCartController", value = "/add-to-cart")
public class AddToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid = (int) Integer.parseInt(request.getParameter("pid"));
        String context = request.getParameter("context");

        Product p = ProductDao.getInstance().getAllProductByProductID(pid);
        Item i = new Item(p.getId(), p.getName(), p.getImage(),p.getDescription(),  p.getPriceSell(), p.getPriceOld(), 1);
//        List<Product> list = new ArrayList<>();
        Cart cart = null;
        HttpSession session = request.getSession();
        if (session.getAttribute("cart") == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        } else {
            cart = (Cart) session.getAttribute("cart");
        }

        cart.addItem(i);
        session.setAttribute("cart", cart);
        response.sendRedirect(context);
//request.getRequestDispatcher("/customer/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

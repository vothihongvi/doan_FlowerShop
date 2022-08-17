package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateCart", value = "/update-cart")
public class UpdateCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart cart = null;
        HttpSession session = request.getSession();
        if (session.getAttribute("cart") == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        } else {
            cart = (Cart) session.getAttribute("cart");
        }
//        ArrayList<Integer> listQuantity = new ArrayList<>();
        String getQuantityUpdate = "";

        for (int i = 0; i < cart.getItems().size(); i++) {
            getQuantityUpdate =(String) request.getParameter("quantity");
            if (getQuantityUpdate != null) {
                int quantityUpdate = Integer.parseInt(getQuantityUpdate);
                cart.getItems().get(i).setQuantity(quantityUpdate);
            }
        }
        request.setAttribute("cart", cart);
        response.sendRedirect("cart");
    }
}

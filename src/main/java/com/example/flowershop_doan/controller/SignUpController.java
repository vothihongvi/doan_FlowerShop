package com.example.flowershop_doan.controller;

import com.example.flowershop_doan.bean.Cart;
import com.example.flowershop_doan.bean.User;
import com.example.flowershop_doan.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "SignUpController", value = "/signup")
public class SignUpController extends HttpServlet {
    public boolean validateForm(String name, String phone, String pass, String verifyPass) {
        if (name.isEmpty() || phone.isEmpty() || pass.isEmpty() || verifyPass.isEmpty()) return false;
        if (phone.trim().length() > 11) return false;
        if (pass.length() < 5) return false;
        if (!verifyPass.equals(pass)) return false;
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String pass = req.getParameter("pass");
        String verifyPass = req.getParameter("verify");
        String error = "";
        if (validateForm(name, phone, pass, verifyPass)) {
            User user = UserService.getInstance().signup(name, phone, pass);
            if (user == null) {
                error = "Số điện thoại đã được sử dụng. Vui lòng sử dụng số điện thoại khác để đăng ký";
                req.setAttribute("error", error);
                req.getRequestDispatcher("/customer/home.jsp").forward(req, resp);
            } else {
                HttpSession session = req.getSession();

                Cart cart = null;
//                HttpSession session = request.getSession();
                if (session.getAttribute("cart") == null) {
                    cart = new Cart();
                    session.setAttribute("cart", cart);
                } else {
                    cart = (Cart) session.getAttribute("cart");
                }

                session.setAttribute("auth", user);
                resp.sendRedirect("home");
            }

        } else {
            error = "Vui lòng nhập đúng và đầy đủ thông tin. " +
                    "Chú ý: Mật khẩu yêu cầu tối thiểu 6 kí tự.";
            req.setAttribute("error", error);
            req.getRequestDispatcher("/customer/home.jsp").forward(req, resp);

        }

    }
}

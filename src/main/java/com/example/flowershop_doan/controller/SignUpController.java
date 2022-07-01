package com.example.flowershop_doan.controller;

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
        if (validateForm(name, phone, pass, verifyPass)) {
            User user = UserService.getInstance().signup(name, phone, pass);
            HttpSession session = req.getSession();
            session.setAttribute("auth", user);
            resp.sendRedirect("home");
        } else {
            resp.setContentType("text/html");
            resp.getWriter().println("Not verify! Back to sign up.");

        }

    }
}

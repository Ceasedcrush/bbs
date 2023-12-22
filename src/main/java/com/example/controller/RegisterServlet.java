package com.example.controller;

import com.example.bean.User;
import com.example.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nickname = req.getParameter("nickname");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user = new User();
        
        user.setNickname(nickname);
        user.setUsername(username);
        user.setPassword(password);

        boolean ok = userService.register(user);

        if (ok) {
            req.setAttribute("register_msg", "注册成功， 请登录");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
        else {
            req.setAttribute("register_msg", "账号已存在");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

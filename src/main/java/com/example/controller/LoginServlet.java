package com.example.controller;

import com.example.bean.AdminUser;
import com.example.bean.User;
import com.example.service.AdminUserService;
import com.example.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //获取用户登陆类型
        int type = Integer.parseInt(req.getParameter("type"));

        if (type == 2) {
            AdminUserService adminUserService = new AdminUserService();
            AdminUser adminUser = adminUserService.login(username, password);
            if (adminUser == null) {
                req.setAttribute("login_msg","用户名或密码错误");
                // 跳转到login.jsp
                req.getRequestDispatcher("/login.jsp").forward(req,resp);
            }
            else {
                HttpSession session = req.getSession();
                session.setAttribute("administer", adminUser);

                String contextPath = req.getContextPath();
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }
        else {
            UserService userService = new UserService();
            User user = userService.login(username, password);

            if (user == null) {
                req.setAttribute("login_msg","用户名或密码错误");

                req.getRequestDispatcher("/login.jsp").forward(req,resp);
            }
            else {
                HttpSession session = req.getSession();
                session.setAttribute("user", user);

                String contextPath = req.getContextPath();
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}

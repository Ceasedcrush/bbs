package com.example.controller.admin;

import com.example.bean.AdminUser;
import com.example.service.AdminUserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/aloginServlet")
public class aLoginServlet extends HttpServlet {
    private AdminUserService adminUserService = new AdminUserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

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

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}

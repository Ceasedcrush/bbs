package com.example.controller;

import com.example.bean.Forum;
import com.example.bean.User;
import com.example.service.ForumService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/getUserPostListServlet")
public class GetUserPostListServlet extends HttpServlet {
    ForumService forumService = new ForumService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();

        User user = (User)httpSession.getAttribute("user");
        List<Forum> userPostList = forumService.getUserPostList(user.getId());

        req.setAttribute("userPostList", userPostList);

        req.getRequestDispatcher("user_postList.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

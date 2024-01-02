package com.example.controller;

import com.example.bean.Forum;
import com.example.service.ForumService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/postInfoServlet")
public class PostInfoServlet extends HttpServlet {
    ForumService forumService = new ForumService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int fid = Integer.parseInt(req.getParameter("fid"));

        Forum post = forumService.post_info(fid);
        req.setAttribute("post", post);

        req.getRequestDispatcher("/getReplyByFidServlet").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

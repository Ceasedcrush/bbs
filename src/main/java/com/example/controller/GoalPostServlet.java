package com.example.controller;

import com.alibaba.fastjson.JSON;
import com.example.bean.Forum;
import com.example.service.ForumService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

@WebServlet("/goalpostServlet")
public class GoalPostServlet extends HttpServlet {
    private ForumService forumService = new ForumService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取帖子信息
        List<Forum> postList = forumService.getpostList();

        req.setAttribute("postList", postList);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

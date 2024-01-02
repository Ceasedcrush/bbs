package com.example.controller;

import com.example.bean.User;
import com.example.service.ForumService;
import com.example.service.ReplyService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/replyServlet")
public class ReplyServlet extends HttpServlet {
    private ReplyService replyService = new ReplyService();
    private ForumService forumService = new ForumService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();
        
        User user = (User) httpSession.getAttribute("user");

        int userId = user.getId();

        int fid = Integer.parseInt(req.getParameter("fid"));

        String replyContent = req.getParameter("reply_content");

        Date date= new Date();
        String nowTime= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
        Timestamp replyTime = Timestamp.valueOf(nowTime);//时间转换 java.util.Date是java.sql.Date的父类
        
        replyService.reply(replyContent, replyTime, userId, fid);
        forumService.replyTot(fid);

        req.setAttribute("reply_msg", "回复成功");
        req.getRequestDispatcher("indexServlet").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

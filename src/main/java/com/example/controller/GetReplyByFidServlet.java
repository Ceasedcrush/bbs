package com.example.controller;

import com.example.bean.Reply;
import com.example.service.ReplyService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/getReplyByFidServlet")
public class GetReplyByFidServlet extends HttpServlet {
    ReplyService replyService = new ReplyService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int fid = Integer.parseInt(req.getParameter("fid"));

        List<Reply> replyList = replyService.getReplyByFid(fid);
        System.out.println(replyList.size());
        req.setAttribute("replyList", replyList);
        req.getRequestDispatcher("reply.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

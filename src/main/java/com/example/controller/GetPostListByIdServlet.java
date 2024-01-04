package com.example.controller;

import com.example.bean.Forum;
import com.example.bean.User;
import com.example.service.ForumService;
import com.example.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Comparator;
import java.util.List;

@WebServlet("/getPostListByIdServlet")
public class GetPostListByIdServlet extends HttpServlet {
    ForumService forumService = new ForumService();
    UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        //一开始并没有在请求中设置userInfo的值，在转发完毕后一开始的userInfo为空，所以需要再次获取userInfo的值
        User user = userService.findUserById(id);

        List<Forum> userPostList = forumService.getUserPostList(id);
        userPostList.sort(Comparator.comparingInt(Forum::getFid).reversed());

        int siz = userPostList.size();
        //分页逻辑处理(分块思想)
        int page = 1;//默认页码
        if(req.getParameter("page") != null) page = Integer.parseInt(req.getParameter("page"));//获取当前页数

        int bg = (page - 1) * 10;//每10个帖子为一页
        int ed = Math.min(bg + 10, siz);//防止越界

        userPostList = userPostList.subList(bg, ed);

        req.setAttribute("userInfo", user);
        req.setAttribute("userPostList", userPostList);
        req.setAttribute("totalPages",  (int)(siz + 9) / 10);//获取总共的页数（上取整）

        req.getRequestDispatcher("user_authorInfo.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

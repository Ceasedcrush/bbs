<%--
  Created by IntelliJ IDEA.
  User: 25602
  Date: 2023/12/23
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <title>发帖</title>
        <link rel="stylesheet" href="css/post.css">
    </head>
    <body>
        <nav>
            <ul>
                <li>${user.nickname}, 欢迎您访问 xxx 校园论坛。</li>
                <li><a href="indexServlet">首页</a> </li>
                <li><a href="post.jsp" target="_blank">发帖</a> </li>
                <li><a href="allPostServlet?root=user">帖子广场</a></li>
                <li><a href="#">我的帖子</a></li>
                <li><a href="#">个人信息</a></li>
                <li><a href="logoutServlet">登出</a></li>
            </ul>
        </nav>
        <div style="width: 80%;margin: 20px auto;overflow: hidden;">
             <article>
                 <h2>发帖</h2>
                 <form id="post_form" action="postServlet" method="post">
                     <p>标题</p>
                     <input name="title" type="text" rows="3" placeholder="最多20个字" required>
                     <p>内容<textarea name="content" rows="10" placeholder="可垂直方向拉伸文本框" required></textarea></p>
                     <input type="submit" value="发布">
                 </form>
             </article>
        </div>

    </body>
</html>

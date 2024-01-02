<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2024/1/1
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
    <head>
        <title>我的帖子</title>
        <link rel="stylesheet" href="css/user_postList.css">
    </head>
    <body>
        <nav>
            <ul>
                <li>${user.nickname}, 欢迎您访问 xxx 校园论坛。</li>
                <li><a href="indexServlet">首页</a> </li>
                <li><a href="post.jsp" target="_blank">发帖</a> </li>
                <li><a href="allPostServlet?root=user">帖子广场</a></li>
                <li><a href="getUserPostListServlet">我的帖子</a></li>
                <li><a href="#">个人信息</a></li>
                <li><a href="logoutServlet">登出</a></li>
            </ul>
        </nav>

        <div class="container">
            <c:if test="${empty userPostList}">
                <article>
                    <p>哎呀！你暂未发帖。</p>
                </article>
            </c:if>
            <c:if test="${not empty userPostList}">
                <c:forEach var="post" items="${userPostList}" varStatus="i">
                    <section>
                        <article>
                            <h3>帖子标题: ${post.title}</h3>
                            <p>${post.content}</p>
                            <fmt:formatDate value="${post.createTime}" pattern="yyyy-MM-dd HH:mm" var="formattedDate" />
                            <div id="link">
                                发布时间:${formattedDate}
                                <a href="upServlet?fid=${post.fid}">点赞(  ${post.up}  )</a>
                                <a href="postInfoServlet?fid=${post.fid}" target="_blank">评论区</a>
                                <a href="#">删除帖子</a>
                            </div>
                        </article>
                    </section>
                </c:forEach>
            </c:if>
        </div>
    </body>
</html>

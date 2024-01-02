<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2023/12/31
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
    <head>
        <title>游客的帖子广场</title>
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        <header>
            <h1>校园论坛</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">首页</a></li>
                    <li><a href="allPostServlet?root=tourist">帖子广场</a></li>
                    <li><a href="register.jsp">注册</a></li>
                    <li><a href="login.jsp">登录</a></li>
                </ul>
            </nav>
        </header>

        <div class="container">

                <c:if test="${empty postList}">
                    <article>
                        <p>哎呀！抱歉，暂时无人发帖。</p>
                    </article>
                </c:if>
                <c:if test="${not empty postList}">
                    <c:forEach var="post" items="${postList}" varStatus="i">
                        <section>
                            <article>
                                <h3>帖子标题: ${post.title}</h3>
                                <p>${post.content}</p>
                                <fmt:formatDate value="${post.createTime}" pattern="yyyy-MM-dd HH:mm" var="formattedDate" />
                                <div id="link">
                                    发布时间:${formattedDate}
                                    <a href="#">点赞(  )</a>
                                    <a href="#">评论</a>
                                    <a href="#">作者:${post.author.nickname}</a>
                                </div>
                            </article>
                        </section>
                    </c:forEach>

<%--                    分页--%>
                    <div class="page">
                        <c:forEach var="i" begin="1" end="${totalPages}">
                            <a href="allPostServlet?page=${i}">${i}</a>
                        </c:forEach>
                    </div>
                </c:if>
        </div>
    </body>
</html>

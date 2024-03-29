<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2024/1/4
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
    <head>
        <title>用户管理</title>
        <link rel="stylesheet" href="css/admin_page.css">
    </head>
    <body>
        <nav>
            <ul>
                <li>${user.nickname}管理员, 欢迎您访问 xxx 校园论坛。</li>
                <li><a href="indexServlet">帖子列表</a></li>
                <li><a href="getAllUserServlet">用户管理</a></li>
                <li><a href="logoutServlet">登出</a></li>
            </ul>
        </nav>

        <div class="container">
            <h2>所有用户</h2>
            <c:if test="${!empty del_msg}">
                <h2 style="text-align: center; font-size: 36px">${del_msg}</h2>
            </c:if>
            <c:if test="${!empty delU_msg}">
                <h2 style="text-align: center; font-size: 36px">${delU_msg}</h2>
            </c:if>
            <c:if test="${empty userList}">
                <article>
                    <p>暂无用户。</p>
                </article>
            </c:if>
            <c:if test="${not empty userList}">
                <c:forEach var="user" items="${userList}" varStatus="i">
                    <section>
                        <article>
                            <p>用户名：${user.nickname}</p>
                            <div id="link">
                                <a href="deleteUserServlet?userId=${user.id}&URL=getAllUserServlet" target="_blank">删除用户</a>
                                <a href="findUserByIdServlet?userId=${user.id}&URL=admin_authorInfo.jsp" target="_blank">作者详情</a>
                            </div>
                        </article>
                    </section>
                </c:forEach>

                <div class="page">
                    <c:forEach var="i" begin="1" end="${totalPages}">
                        <a href="#?page=${i}">${i}</a>
                    </c:forEach>
                </div>
            </c:if>
        </div>
    </body>
</html>

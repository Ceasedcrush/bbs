<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2023/12/30
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
    <head>
        <title>管理员页面</title>
        <link rel="stylesheet" href="css/admin_page.css">
    </head>
    <body>
        <nav>
            <ul>
                <li>${user.nickname}, 欢迎您访问 xxx 校园论坛。</li>
                <li><a href="allPostServlet?root=admin">帖子广场</a></li>
                <li><a href="#">个人信息</a></li>
                <li><a href="#">我的帖子</a></li>
                <li><a href="#">用户管理</a></li>
                <li><a href="logoutServlet">登出</a></li>
            </ul>
        </nav>
<%--        确保登录后跳转到当前界面时有帖子，且不会陷入死循环--%>
        <%
            Boolean included = (Boolean) request.getAttribute("included");
            if (included == null || !included) {
                request.setAttribute("root","admin");
                request.setAttribute("included", true); // 设置标志位
                request.getRequestDispatcher("/allPostServlet").include(request, response); // 包含 allPostServlet
            }
        %>

        <section>
            <c:if test="${not empty postList}">
                <c:forEach var="post" items="${postList}">
                    <fmt:formatDate value="${post.createTime}" pattern="yyyy-MM-dd HH:mm:ss" var="formattedDate" />
                    <h3>标题:${post.title}</h3>
                    <p>${post.content}</p>
                    ${formattedDate}
                    ${post.author.nickname}
                    <a href="reply.jsp?fid=${post.fid}">评论</a>
                </c:forEach>
            </c:if>
            <c:if test="${empty postList}">
                <p>当前没有帖子。</p>
            </c:if>
        </section>
    </body>
</html>

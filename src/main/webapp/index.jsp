<%@ page import="java.util.List" %>
<%@ page import="com.example.bean.Forum" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <title>___校园论坛</title>
    </head>
    
    
    <body>
        <h1>欢迎访问___校园论坛</h1>
        <a href="login.jsp">登录</a>
        <a href="register.jsp">注册</a>
        <a href="post.jsp">发帖</a>
        <!-- 确保 goalpostServlet 只被包含一次 -->
        <%
            Boolean included = (Boolean) request.getAttribute("included");
            if (included == null || !included) {
                request.setAttribute("included", true); // 设置标志位
                request.getRequestDispatcher("/goalpostServlet").include(request, response); // 包含 goalpostServlet
            }
        %>

        <div>
        <%-- 获取 postList 并展示 --%>
                <c:if test="${not empty postList}">
                    <c:forEach var="post" items="${postList}">
                        <h3>标题:${post.title}</h3>
                        <p>${post.content}</p>
                        ${post.createTime}
                        ${post.author.nickname}
<%--                        <a href="reply.jsp">评论</a>--%>
                    </c:forEach>
                </c:if>
                <c:if test="${empty postList}">
                    <p>没有帖子数据。</p>
                </c:if>
        </div>

    </body>
</html>

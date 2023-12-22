<%--
  Created by IntelliJ IDEA.
  User: 25602
  Date: 2023/12/22
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>欢迎注册</title>
</head>
<body>
    <h1>欢迎注册</h1>
    <span>已有账号？</span><a href="login.jsp">登录</a>
    <form id="register_form" action="registerServlet" method="post">
        <p>用户名:<input name="nickname" type="text" id="nickname"> </p>
        <p>账号:<input name="username" type="text" id="username"></p>
        <div id="username_err" class="err_msg">${register_msg}</div>
        <p>密码: <input name="password" type="text" id="password"></p>
        <input type="submit" value="注册">
    </form>
</body>
</html>

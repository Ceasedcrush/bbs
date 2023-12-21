<%--
  Created by IntelliJ IDEA.
  User: 25602
  Date: 2023/12/21
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>欢迎登陆</title>
</head>
<body>
    <form id="form" method="post" action="aloginServlet">
        <h1>欢迎登陆</h1>
        <div id="erroMsg">${login_msg}</div>
        <p>账号:<input id="username" name="username" type="text"></p>
        <p>密码:<input id="password" name="password" type="password"></p>

        <input type="submit" class="button" value="登陆">
    </form>
</body>
</html>

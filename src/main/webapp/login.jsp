<%--
  Created by IntelliJ IDEA.
  User: 25602
  Date: 2023/12/21
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <title>欢迎登陆</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
<%--        <form id="login_form" method="post" action="loginServlet">--%>
<%--            <p>账号:<input id="username" name="username" type="text" placeholder="请输入您的账号" value="${cookie.username.value}"></p>--%>
<%--            <p>密码:<input id="password" name="password" type="password" placeholder="请输入您的密码" value="${cookie.password.value}"></p>--%>
<%--            <p>记住账号:<input id="remember" name="remember" value="1" type="checkbox"></p>--%>
<%--            <input type="radio" id="radio-1" name="type" value="1"checked>--%>
<%--            <label>普通用户</label>--%>
<%--            <input type="radio" id="radio-2" name="type" value="2">--%>
<%--            <label>管理员</label>--%>
<%--            <div id="subDiv">--%>
<%--                <input type="submit" class="button" value="登陆">--%>
<%--                <input type="reset" class="button" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                <p>${login_msg}</p>--%>
<%--                <a href="register.jsp">没有账号？注册一个!</a>--%>
<%--            </div>--%>
<%--        </form>--%>


        <div class="login-container">
            <h2>${empty register_msg ? '欢迎登陆' : register_msg}</h2>
            <form class="login-form" method="post" action="loginServlet">
                <div class="form-group">
                    <label for="username">账号</label>
                    <input type="text" id="username" name="username" placeholder="请输入用户名" value="${cookie.username.value}" required >
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" id="password" name="password" placeholder="请输入密码" value="${cookie.password.value}" required>
                </div>
                <div class="form-group" style="display: flex;align-items: center;">
                    <input type="checkbox" id="remember" name="remember" value="1" style="margin-right: 15px;">
                    <label for="remember">记住账号</label>
                </div>
                <div class="login-options">
                    <input type="radio" id="radio-1" name="type" value="1" checked>
                    <label for="radio-1">普通用户</label>
                    <input type="radio" id="radio-2" name="type" value="2">
                    <label for="radio-2">管理员</label>
                </div>
                <button type="submit">登录</button>
            </form>

            <div class="links">
                <p><a href="indexServlet">返回主页</a> | <a href="register.jsp">注册新账号</a></p>
            </div>
        </div>
    </body>
</html>

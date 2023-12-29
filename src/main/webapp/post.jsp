<%--
  Created by IntelliJ IDEA.
  User: 25602
  Date: 2023/12/23
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <title>发帖</title>
    </head>
    <body>
        <p>发布帖子</p>
        <form id="post_form" action="postServlet" method="post">
            <p>标题</p><input name="title" type="text"> </p>
            <p>内容<textarea name="content"></textarea></p>
            <input type="submit" value="发布">
        </form>
    </body>
</html>

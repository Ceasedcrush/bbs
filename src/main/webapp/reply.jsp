<%--
  Created by IntelliJ IDEA.
  User: 25602
  Date: 2023/12/24
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <title>评论</title>
    </head>
    <body>
        <form name="reply_form" action="replyServlet" method="post">
            <textarea name="reply_content" ></textarea>
            <input type="submit" value="发送">
        </form>
    </body>
</html>

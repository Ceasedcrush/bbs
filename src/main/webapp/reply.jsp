<%@ page import="com.example.bean.Forum" %>
<%@ page import="com.example.service.ForumService" %>
<%@ page import="java.io.Writer" %><%--
  Created by IntelliJ IDEA.
  User: 25602
  Date: 2023/12/24
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <link rel="stylesheet" href="css/reply.css">
        <title>评论</title>
    </head>
    <body>
        <nav>
            <ul>
                <li>${user.nickname}, 欢迎您访问 xxx 校园论坛。</li>
                <li><a href="indexServlet">首页</a> </li>
                <li><a href="allPostServlet?root=user">帖子广场</a></li>
                <li><a href="#">个人信息</a></li>
                <li><a href="#">我的帖子</a></li>
                <li><a href="logoutServlet">登出</a></li>
            </ul>
        </nav>

        <div class="container">
            <section>
                <article>
                    <h2>帖子标题: ${post.title}</h2>
                    <p style="font-size: x-large">${post.content}</p>
                    <fmt:formatDate value="${post.createTime}" pattern="yyyy-MM-dd HH:mm" var="formattedDate" />
                    <div id="link">
                        <div style="float: right;">
                            <span style="color: #007bff; font-weight: bold;">发布时间:${formattedDate}</span>
                            <a href="upServlet?fid=${post.fid}">点赞(  )</a>
                            <a href="#">作者:${post.author.nickname}</a>
                        </div>
                    </div>
                    <div id="allReply">
                        <h4>所有评论   <a href="#" onclick="showCommentModal()">发表评论</a></h4>
                        <c:choose>
                            <c:when test="${empty replyList}">
                                暂时无人回复
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="reply" items="${replyList}">
                                    <div class="reply">
                                        <p>回复内容：${reply.replyContent}</p>
                                        <div class="replyInfo">
                                            <span>回复人：${reply.author.nickname}</span>
                                            <fmt:formatDate value="${reply.replyTime}" pattern="yyyy-MM-dd HH:mm" var="formattedDate" />
                                            <span>回复时间：${reply.replyTime}</span>
                                            <a href="upServlet">点赞（）</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <!-- 弹窗评论框 -->
                    <div id="commentModal" class="modal">
                        <button onclick="hideCommentModal()" style="float: right; margin-bottom: 10px">X</button>
                        <form name="reply_form" action="replyServlet?fid=${post.fid}" method="post">
                            <textarea name="reply_content"></textarea>
                            <input type="submit" value="发送评论" style="float: right; margin-top: 10px">
                        </form>
                    </div>
                </article>
            </section>
        </div>



        <!-- JavaScript部分 -->
        <script>
            function showCommentModal() {
                var modal = document.getElementById("commentModal");
                modal.style.display = "block";
            }

            function hideCommentModal() {
                var modal = document.getElementById("commentModal");
                modal.style.display = "none";
            }
            function check() {
                var content = document.getElementById("replyContent").value.trim();
                if (content === "") {
                    alert("评论内容不能为空！");
                    return false; // 阻止表单提交
                }
                return true; // 允许表单提交
            }
        </script>

    </body>
</html>

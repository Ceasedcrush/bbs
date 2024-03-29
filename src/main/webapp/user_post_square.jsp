<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2024/1/3
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
    <head>
        <title>帖子广场</title>
        <link rel="stylesheet" href="css/user_page.css">
    </head>
    <body>
        <nav>
            <ul>
                <li>${user.nickname}, 欢迎您访问 xxx 校园论坛。</li>
                <li><a href="indexServlet">首页</a> </li>
                <li><a href="post.jsp" target="_blank">发帖</a> </li>
                <li><a href="allPostServlet">帖子广场</a></li>
                <li><a href="getUserPostListServlet">我的帖子</a></li>
                <li><a href="user_info.jsp">个人信息</a></li>
                <li><a href="logoutServlet">登出</a></li>
            </ul>
        </nav>

        <div class="container">
            <h2>帖子广场</h2>
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
                                <a href="upServlet?fid=${post.fid}&URL=allPostServlet">${empty up_msg  ||  upId != post.fid ? '点赞  ' : '点赞成功！ '}(  ${post.up}  )</a>
                                <a href="getReplyByFidServlet?fid=${post.fid}&URL=reply.jsp" target="_blank">评论区</a>
                                <a href="findUserByIdServlet?userId=${post.userId}&URL=user_authorInfo" target="_blank">作者:${post.author.nickname}</a>
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

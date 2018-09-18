<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/9/18
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    String name = "";
    if (cookies != null && cookies.length != 0)
    {
        for (Cookie c : cookies)
        {
            if (c.getName().equals("username"))
            {
                name = c.getValue();
            }
        }
    }

    String ms = (String) request.getAttribute("msg");
    if (ms == null){
        ms = "";
    }

    if (session.getAttribute("username") != null){
        response.sendRedirect("jsp/succ1.jsp");
    }
%>
<form method="post" action="/hello">
    <h5 style="color: red"><%=ms %></h5>
    用户名：<input type="text" name="username" value="<%=name %>"><br>
    密&emsp;码：<input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>

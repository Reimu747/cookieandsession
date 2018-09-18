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
    <title>succ1</title>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username == null)
    {
        request.setAttribute("msg", "请走正门！");
        request.getRequestDispatcher("../index.jsp").forward(request, response);
    }
%>
<h2>Welcome, <%= username %>!</h2>
</body>
</html>
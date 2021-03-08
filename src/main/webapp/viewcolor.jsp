<%--
  Created by IntelliJ IDEA.
  User: mccormicksk
  Date: 3/8/21
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Implicit Object Example</title>

    <style>
       body {background-color: <%=request.getParameter("color")%>}

    </style>
</head>
<body>
<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>
<p>"color" parameter: <%= request.getParameter("color") %></p>
</body>
</html>

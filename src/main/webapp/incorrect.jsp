<%--
  Created by IntelliJ IDEA.
  User: mccormicksk
  Date: 3/8/21
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Right!</title>
</head>
<body>

<h1>Boo! You were incorrect! You guessed <%= request.getParameter("number") %> and you were WRONG!</h1>
<h2>The correct number was <%= request.getParameter("correct") %>!</h2>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"number" parameter: <%= request.getParameter("number") %></p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

</body>
</html>

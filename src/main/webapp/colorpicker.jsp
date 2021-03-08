<%--
  Created by IntelliJ IDEA.
  User: mccormicksk
  Date: 3/8/21
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick a Color</title>
</head>
<body>
<form action="colorpicker" method="post">
    <label for="colorpicker">Pick a color, any color</label>
    <input id="colorpicker" name="color" type="text">
    <button>Submit</button>
</form>

<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>
<p>"color" parameter: <%= request.getParameter("color") %></p>
</body>
</html>

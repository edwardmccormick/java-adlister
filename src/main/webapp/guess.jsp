<%--
  Created by IntelliJ IDEA.
  User: mccormicksk
  Date: 3/8/21
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>What would you like to guess?</title>
</head>
<body>
<p>Pick a number, any number, you see?</p>
<h4>(as long as that number is between 1 and 3)</h4>
<form action="/guess" method="post">
    <input type="number">
</form>

</body>
</html>

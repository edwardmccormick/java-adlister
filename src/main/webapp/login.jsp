<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
<h1>Login</h1>

<form method="post">
    <label for="username">Username</label>
    <input id="username" type="text" placeholder="Username" name="username"><br>
    <label for="password">Password</label>
    <input id="password" type="password" name="password">
    <button>Login</button>
</form>

<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"username" parameter: <%= request.getParameter("username") %></p>
<p>"username" parameter: ${param.username}</p>
<p>"password" parameter: <%= request.getParameter("password") %></p>
<p>"password" parameter: ${param.password}</p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

<% request.setAttribute("username",request.getParameter("username")); %>
<% request.setAttribute("password",request.getParameter("password")) ; %>

<c:if test = "${param.username eq 'admin' && param.password eq 'password'} ">
<% response.sendRedirect("profile.jsp"); %>
</c:if>

</body>
</html>
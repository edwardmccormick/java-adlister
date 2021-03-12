<%--
  Created by IntelliJ IDEA.
  User: edwardmccormick
  Date: 3/12/21
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a New Ad</title>
</head>
<body>
<h1>Create a new ad!</h1>
<form action="/create" method="post">
    <label for="title">Ad Title</label>
<input type="text" id="title" name="title">
    <label for="description">Write a description for your ad - be sure to include any details that will help viewers.</label>
    <textarea id="description" name="description">Your description goes here.</textarea>
    <button>Submit</button>
</form>
</body>
</html>

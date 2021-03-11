<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: edwardmccormick
  Date: 3/10/21
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Current Ad Status</title>
</head>
<body>
<h1>Here's a list of all the ads currently running</h1>
<ul>
<c:forEach items="${adList}" var="ad">
<li>${ad.title} - ${ad.description}</li>

    </c:forEach>
</ul>


Want to add your own?
<form method="post" action="ads">
    <input type="text" placeholder="Title" name="title"><br>
    <input type="text" placeholder="Description" name="description">
    <button>Submit</button>
</form>
</body>
</html>

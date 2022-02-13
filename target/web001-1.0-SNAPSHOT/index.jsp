<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Student</h1>
<form action="/student" method="post">
    <input name = "name">
    <input type="submit" value="提交">
</form>
<h1>Account</h1>
<form action="/account" method="post">
    <input name = "name">
    <input type="submit" value="提交">
</form>
<h1>user</h1>
<form action="/user" method="post">
    <input name = "name">
    <input type="submit" value="提交">
</form>

<h1>发帖</h1>
<form action="/content" method="post">
    <textarea cols="40" rows="40" name="content"></textarea>
    <input type="submit" value="发布">
</form>

</body>
</html>
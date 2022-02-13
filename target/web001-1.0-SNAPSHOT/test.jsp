<%@ page import="com.example.web001.entity.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: devin
  Date: 12/2/2022
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>没用标签</h1>

<table>
    <tr>
        <td>学生编号</td>
        <td>学生姓名</td>
        <td>学生年龄</td>
    </tr>
    <%
        List <Student> students = (List<Student>) request.getAttribute("student");
        for (Student student : students) {


    %>
    <tr>
        <td><%=student.getId()%></td>
        <td><%=student.getName()%></td>
        <td><%=student.getAge()%></td>
    </tr>
    <%
        }
    %>
</table>

<h1>有标签</h1>
<table>
    <tr>
        <td>学生编号</td>
        <td>学生姓名</td>
        <td>学生年龄</td>
    </tr>
    <c:forEach items="${student}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
        </tr>

    </c:forEach>
</table>
</body>
</html>

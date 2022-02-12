<%@ page import="com.example.web001.entity.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: devin
  Date: 12/2/2022
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

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
</body>
</html>

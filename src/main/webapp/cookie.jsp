<%--
  Created by IntelliJ IDEA.
  User: devin
  Date: 14/2/2022
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            String name = cookie.getName();
            String value = cookie.getValue();
            int maxAge = cookie.getMaxAge();
            out.write(name + " = " + value + " MaxAge is : " + maxAge + "<br/>");
        }
    %>

</body>
</html>

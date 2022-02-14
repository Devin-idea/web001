<%--
  Created by IntelliJ IDEA.
  User: devin
  Date: 14/2/2022
  Time: 16:17
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
  String value =null;
  for (Cookie cookie : cookies) {
    if (cookie.getName().equals("username")) {
      value = cookie.getValue();
    }

  }
%>
<%=value %>欢迎回来 <a href="/cookieLogout">Logout</a>
</body>
</html>

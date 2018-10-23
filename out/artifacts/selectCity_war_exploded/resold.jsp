<%--
  Created by IntelliJ IDEA.
  User: 21086
  Date: 2018/10/21
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        out.println("省份: " + province);
        out.println("城市: " + city);
    %>



</body>
</html>

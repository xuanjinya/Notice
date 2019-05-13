<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公告系统登录页面</title>
</head>
<body>
<h3 align="center">公告系统登录页面</h3>
<hr>
<form action="control.jsp">
    <table align="center">
        <tr>
            <td>账号</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td><input type="submit" name="登录"/></td>
            <td></td>
        </tr>
    </table>
</form>
</body>
</html>

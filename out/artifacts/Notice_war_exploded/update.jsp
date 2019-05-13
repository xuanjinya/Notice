<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3 align="center">修改公告信息</h3>
<hr>
    <form action="updata_control.jsp">
        <table align="center" border="1px">
            <tr>
                <td>编号</td>
                <td><input type="text" name="account" value="<%= request.getParameter("account")%>"/></td>
            </tr>
            <tr>
                <td>名称</td>
                <td><input type="text" name="name" value="<%= request.getParameter("name")%>" /></td>
            </tr>
            <tr>
                <td>内容</td>
                <td><input type="text" name="content" value="<%= request.getParameter("content")%>"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="修改"></td>
            </tr>
        </table>
    </form>
</body>
</html>

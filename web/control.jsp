<%@ page import="cn.huang.bean.Emp" %>
<%@ page import="cn.huang.db.DBUtil" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Emp emp = new Emp(username, password, null, null, null);
    boolean flag = DBUtil.selectEmpByAccountAndPassword(emp);
    Map<String, Emp> map = DBUtil.map;
    if (flag == true) {
%>
<h3 align="center">欢迎来到公告管理系统首页</h3>
<hr>

<form action="select.jsp">
    <table align="center" border="1px">
        <tr>
            <td>公告编号</td>
            <td><input type="text" name="account"></td>
            <td><input type="submit" value="select"></td>
        </tr>
    </table>
</form>

<table align="center" border="1px">
    <tr>
        <td>编号</td>
        <td>名称</td>
        <td>内容</td>
        <td>删除</td>
        <td>修改</td>
    </tr>
    <%
        for (String key : map.keySet()) {
            Emp e = map.get(key);
    %>

    <tr>
        <td><%= e.getAccount()%>
        </td>
        <td><%= e.getName()%>
        </td>
        <td><%=e.getContent()%>
        </td>
        <td>
            <a href="delete.jsp?account=<%= e.getAccount()%>&name=<%= e.getName()%>&content=<%=e.getContent()%>">删除</a>
        </td>
        <td>
            <a href="update.jsp?account=<%= e.getAccount()%>&name=<%= e.getName()%>&content=<%=e.getContent()%>">修改</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
<%
    }
%>
</body>
</html>

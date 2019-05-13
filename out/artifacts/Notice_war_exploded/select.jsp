<%@ page import="java.util.Map" %>
<%@ page import="cn.huang.db.DBUtil" %>
<%@ page import="cn.huang.bean.Emp" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询到的结果</title>
</head>
<body>
<%
    Map<String, Emp> map = DBUtil.map;
    for (String key : map.keySet()) {
        Emp e = map.get(key);
        if (e.getAccount().equals(request.getParameter("account"))) {
%>
<table align="center" border="1px">
    <tr>
        <td>编号</td>
        <td>名称</td>
        <td>内容</td>
        <td>删除</td>
        <td>修改</td>
    </tr>
    <tr>
        <td><%= e.getAccount()%>
        </td>
        <td><%= e.getName()%>
        </td>
        <td><%= e.getContent()%>
        </td>
        <td>
            <a href="update.jsp?account=<%= e.getAccount()%>&name=<%= e.getName()%>&content=<%=e.getContent()%>">删除</a>
        </td>
        <td>
            <a href="update.jsp?account=<%= e.getAccount()%>&name=<%= e.getName()%>&content=<%=e.getContent()%>">修改</a>
        </td>
    </tr>
</table>
<%
            break;
        }
    }

%>


</body>
</html>

<%@ page import="java.util.Map" %>
<%@ page import="cn.huang.bean.Emp" %>
<%@ page import="cn.huang.db.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String, Emp> map = DBUtil.map;
    Emp emp = map.get(request.getParameter("account"));
    emp.setName(request.getParameter("name"));
    emp.setContent(request.getParameter("content"));
%>
<h3 align="center">修改公告信息成功！</h3>
</body>
</html>

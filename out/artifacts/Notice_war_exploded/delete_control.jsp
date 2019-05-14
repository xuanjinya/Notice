<%@ page import="cn.huang.bean.Emp" %>
<%@ page import="cn.huang.db.DBUtil" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 16:00
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
    map.remove(request.getParameter("account"));
%>
<h3 align="center">删除公告信息成功！</h3>
</body>
</html>

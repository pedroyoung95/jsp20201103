<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>pageContext findAttribute</h1>
<%
pageContext.setAttribute("myAttr1", "pageVal1");
request.setAttribute("myAttr1", "reqVal1");
session.setAttribute("myAttr1", "sesVal1");
application.setAttribute("myAttr1", "appVal1");
%>

<%= pageContext.findAttribute("myAttr1") %>
<!--파라미터에 적힌 이름의 attribute의 값을 가장 좁은 영역에서부터 찾음-->
</body>
</html>
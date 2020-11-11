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
<h1>pageContext methods</h1>
<%
pageContext.setAttribute("pageAttr1", "pageVal1"); 
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sesAttr1", "sesVal1");
application.setAttribute("appAttr1", "appVal1");
%>
<!--pageContext이 가장 작은 영역이므로, 더 큰 영역인 request, session 등의 정보를 읽을 수 있음-->
<!--마치 자식클래스가 부모클래스의 정보를 읽어올 수 있는 것과 유사-->
<%= pageContext.getAttribute("pageAttr1")%> <br />
<%= pageContext.getAttribute("reqAttr1", PageContext.REQUEST_SCOPE) %> <br />
<!--더 큰 영역의 attribute 이름, 어떤 더 큰 영역인지 알려주는 int값 총 두 개의 파라미터-->
<%= pageContext.getAttribute("sesAttr1", PageContext.SESSION_SCOPE) %> <br />
<%= pageContext.getAttribute("appAttr1", PageContext.APPLICATION_SCOPE) %> <br />
</body>
</html>
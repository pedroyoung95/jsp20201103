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
<h1>session ex</h1>
<%
request.setAttribute("attr1", "value1");
session.setAttribute("attr2", "value2");
%>
<!--session객체는 기본적으로 사용가능. jsp들이 같은 session을 공유하면 attribute값도 공유-->
<!--session객체는 httpsession이라는 interface의 구현객체임-->
<!--session attribute에 저장된 값은 session 종료 전까지 사용 가능-->
<!--하나의 브라우저에서만 session이 유지됨-->

attr1 : <%= request.getAttribute("attr1") %>
<br />
attr2 : <%= session.getAttribute("attr2") %>
</body>
</html>
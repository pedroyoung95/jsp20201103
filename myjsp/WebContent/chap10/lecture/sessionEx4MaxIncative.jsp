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
<%
session.setMaxInactiveInterval(5); /*세션 활성화 시간을 설정하는 메소드(단위는 초)*/
/*현재 생성된 세션의 활성화 시간만 해당*/
/*30초 후 새로고침하면 새로운 세션ID가 나옴(새로운 세션 생성)*/
long max = session.getMaxInactiveInterval();
%>
max inactive interval : <%= max %>
</body>
</html>
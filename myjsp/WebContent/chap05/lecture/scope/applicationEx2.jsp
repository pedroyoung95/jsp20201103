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
<h1>get attribute</h1>
<h2><%= request.getAttribute("reqAttr1") %></h2>
<!--applicationEx2의 request 객체는 applicationEx1의 request 객체와 다르므로 null값 출력-->
<!--form action이나 액션태그 등으로 request객체를 공유해야 다른 jsp페이지에서도 request읽기 가능-->
<h2><%= session.getAttribute("sessionAttr1") %></h2>
<h2><%= application.getAttribute("appAttr1") %></h2>
</body>
</html>
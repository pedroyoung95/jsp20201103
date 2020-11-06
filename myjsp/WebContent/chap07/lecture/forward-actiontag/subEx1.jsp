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
<h1>sub jsp</h1>
<h3><%= request.getParameter("param") %></h3>	
<!--서버 실행하면서 생성된 하나의 request객체를 계속 사용-->
<!--따라서 실행 흐름이 넘어온 subEx1.jsp에서도 mainEx1.jsp의 파라미터를 읽을 수 있음  -->
</body>
</html>
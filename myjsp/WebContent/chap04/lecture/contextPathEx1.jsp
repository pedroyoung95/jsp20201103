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
contextPath : <%= request.getContextPath() %>
<br />
<a href="/myjsp3/chap04/lecture/bufferEx1.jsp">buffer</a>
<br />
<a href="<%= request.getContextPath() %>/chap04/lecture/bufferEx1.jsp">buffer</a>
<!--contextPath를 직접 적으면 함부로 변경될 수 있으므로, getContextPath메소드 이용  -->

<form action=""></form>
</body>
</html>
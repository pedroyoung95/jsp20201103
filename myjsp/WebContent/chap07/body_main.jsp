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
include 전 name 파라미터 값: <%= request.getParameter("name") %>

<hr />

<jsp:include page="body_sub.jsp">
	<jsp:param name="name" value="최범균"></jsp:param>
</jsp:include>
<!--동일한 이름의 파라미터가 존재하면, 기존 값을 유지한 채 새 값을 추가  -->
<hr />

include 후 name 파라미터 값: <%= request.getParameter("name") %>
<!--jsp:param으로 보낸 파라미터 값은 일회성으로, include과정이 끝난 후에는 사라짐  -->
</body>
</html>
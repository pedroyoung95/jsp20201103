<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<% String email = request.getParameter("email"); %>
<% String password = request.getParameter("password"); %>
<% String nickname = request.getParameter("nickname"); %>
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
if(email.equals("") || password.equals("") || nickname.equals("")) {
%>
<div class="container">
<br />
	<div class="alert alert-danger" role="alert">일치하는 이메일 또는 패스워드가 없습니다.	</div>
	<br />
	<form action="enrollPage.jsp">
	<button type="submit" class="btn btn-primary">돌아가기</button>	
	</form>
</div>

<%
} else {
%>
<h1><%= email %></h1> <br />
<h1><%= password %></h1> <br />
<h1><%= nickname %></h1> <br />
<%
}
%>
</body>
</html>
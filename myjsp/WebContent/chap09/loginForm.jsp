<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="chap09.Cookies" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Cookies cookies = new Cookies(request);
if(!cookies.exists("AUTH")) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인 폼</title>
</head>
<body>
<form action="login.jsp" method="post">
아이디 <input type="text" name="id" size="10" />
암호 <input type="password" name="password" size="10" />
<input type="submit" value="로그인" /> 
</form>

<br />

<form action="loginCheck.jsp">
<input type="submit" value="로그인 확인" />
</form>

</body>
</html>
<%
} else {
%>
<jsp:forward page="loginCheck.jsp"></jsp:forward>
<%
}
%>
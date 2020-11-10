<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="chap09.Cookies" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");

if(id.equals(password)){
	response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인성공</title>
</head>
<body>
로그인에 성공했습니다. 
<form action="logout.jsp">
<input type="submit" value="로그아웃" />
</form>
</body>
</html>
<%
} else {
%>
<script>
alert("로그인에 실패하였습니다.");
history.go(-1);
</script>
<%
}
%>
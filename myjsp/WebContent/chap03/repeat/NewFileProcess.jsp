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
Map<String, String> idandpw = new HashMap<>();
idandpw.put("abc", "1111");

if(idandpw.containsKey(request.getParameter("id"))) {
	if(idandpw.get("abc").equals(request.getParameter("pw"))) {
		out.print("로그인 되었습니다.");
	} else {out.print("비밀번호가 틀렸습니다.");}
} else {out.print("아이디가 틀렸습니다.");}
%>
</body>
</html>
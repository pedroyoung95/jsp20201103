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
<h1>장바구니</h1>
<%
Map<String, Integer> map = (Map<String, Integer>) session.getAttribute("cart");
if(map != null && map.size() > 0) {
	Set<String> key = map.keySet();
	for(String item : key) {
	%>
		<li><%= item %> : <%= map.get(item) %></li>
	<%
	}
	%>
	
<%
} else {
%>
장바구니가 비어있습니다.
<%
}
%>
<a href="product.jsp">돌아가기</a>	
</body>
</html>
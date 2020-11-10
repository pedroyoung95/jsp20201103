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
Cookie[] cookies = request.getCookies(); 
/*모든 쿠키를 얻어서 배열로 반환한 후, 그 배열에서 원하는 쿠키를 탐색*/
/*request객체로 읽기 때문에, 맨 처음에는 response에만 쿠키가 담겨있으므로 맨 처음 읽을 때는 null값*/
/*두 번재부터는 request에 쿠키가 담겨있으므로 배열에 쿠키값이 들어감*/
for(Cookie cookie : cookies) {
%>
<%= cookie.getName() %> = <%= cookie.getValue() %>
<br />
<%
}
%>
<!--브라우저가 종료되면 쿠키가 사라짐-->
</body>
</html>
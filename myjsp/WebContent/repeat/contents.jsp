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
	if(idandpw.get("abc").equals(request.getParameter("pw"))) { %>
	
<%@ include file="/WEB-INF/repeat/navbar.jsp"%>

<div class="container-fluid mt-2">
<div class="card" style="width:400px">
  <img class="card-img-top" src="chicago.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">John Doe</h4>
    <p class="card-text">Some example text.</p>
    <a href="#" class="btn btn-primary">See Profile</a>
  </div>
</div>
</div>

	<%} else {out.print("비밀번호가 틀렸습니다.");} %>
	<br />
	<a href="login.jsp">돌아가기</a>
<%} else {
	out.print("아이디가 틀렸습니다."); %>
	<br />
	<a href="login.jsp">돌아가기</a>
<%}
%>
</body>
</html>
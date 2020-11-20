<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car" scope="page">
	<jsp:setProperty name="car" property="name" value="kia"></jsp:setProperty>
	<jsp:setProperty name="car" property="speed" value="100"></jsp:setProperty>
</jsp:useBean>

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
<h3>scrpitlet</h3>
<%
chap08.Car carData = (chap08.Car)pageContext.getAttribute("car");
%>
<h3>expression</h3>
<%= carData.getName() %> <br />
<%= carData.getSpeed() %> <br />

<h3>action tag</h3>
<jsp:getProperty property="name" name="car"></jsp:getProperty> <br />
<jsp:getProperty property="speed" name="car"></jsp:getProperty> <br />

<h3>expression language(EL) 표현 언어</h3> <!--또다른 프로그래밍 언어-->
${car.name} <br />
${car.speed} <br />
</body>
</html>
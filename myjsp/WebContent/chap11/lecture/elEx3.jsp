<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty name="car" property="name" value="hyundai" />
	<jsp:setProperty name="car" property="speed" value="0" />
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
<!--영역의 들어있는 attributee다음에 .(dot)으로 property를 연결-->
${car.name } <br /> 
${car.speed } <br />
${car.stop } <br />

<hr />
<!--[]안에 프로퍼티 명을 string으로 넣어서 작성할 수도 있음-->
${car["name"] } <br />
${car["speed"] } <br />
${car["stop"] } <br />
</body>
</html>
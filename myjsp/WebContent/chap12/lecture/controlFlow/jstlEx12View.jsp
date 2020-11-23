<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:if test="${not empty param.dark or dark}" var="dark" scope="session"> 
<!--if태그의 조건문의 결과를 dark라는 변수에 담고, session 영역에 담음  -->
	<div style="background-color:black; color:white;">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore repellat necessitatibus aliquam consequuntur nesciunt exercitationem beatae sapiente earum saepe alias esse explicabo praesentium nulla. Totam vero provident dolores quae odit!
	</div>
</c:if>

<c:if test="${not dark}">
	<div style="background-color:black; color:white;">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore repellat necessitatibus aliquam consequuntur nesciunt exercitationem beatae sapiente earum saepe alias esse explicabo praesentium nulla. Totam vero provident dolores quae odit!
	</div>
</c:if>
</body>
</html>
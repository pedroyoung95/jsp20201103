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
 <!--switch 또는 if else 문과 유사-->
<c:choose>
	<c:when test="false"> 
  		<h1>hello 1</h1>
 	</c:when>
 	<c:when test="false">
 		<h1>hello 2</h1>
 	</c:when>
 	<c:otherwise>
 		<h1>hello 3</h1>
 	</c:otherwise>
</c:choose>
<!--하나의 c:when문이 true이면 이후 c:when문은 실행X-->
<!--모든 c:when문이 false이면 default문과 유사한 c:otherwise문이 실행됨  -->
</body>
</html>
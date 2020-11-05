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
String str = "java";
%>

<jsp:include page="navbarEx1.jsp"></jsp:include>
<!--jsp가 제공하는 액션 태크(특정 기능을 수행하는 태그)-->
<!--액션 태그는 속성값인 다른 파일의 실제 실행 결과를 가져오는 방식-->

<div class="container">
<h1>액션 태그 본문</h1>
</div>

<jsp:include page="footerEx1.jsp"></jsp:include>

</body>
</html>
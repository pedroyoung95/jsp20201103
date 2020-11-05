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

<%@ include file="/WEB-INF/chap07/include-directive/navbarEx1.jsp" %>
<!--include라는 디렉티브의 file 속성에 가져오고자 하는 파일 명 기입-->
<!--include되는 파일을 숨길 경우, 접근할 수 없는 폴더인 WEB-INF안에 넣어서 사용-->

<div class="container">
	<h1>cool page~</h1>
	<h2><%= name %></h2>
</div>

<%@ include file="/WEB-INF/chap07/include-directive/footerEx1.jsp" %>


</body>
</html>
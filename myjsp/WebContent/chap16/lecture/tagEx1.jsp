<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lectrue"%> <!--my라는 프리픽스를 앞에 붙이고 태그파일이름으로 태그이름을 작성하면 사용 가능해짐  -->
<!--tagdir속성으로 tag파일을 import(page디렉티브와 유사) -->
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
<c:if test="true">
	<h1>Lorem.</h1>
</c:if>

<my:myFirst />
<my:mySecond></my:mySecond>
<!--'<prefix값:태그파일명/>' 형태로 작성  -->
<!--prefix는 본인이 원하는 값 할당, 태그파일명이 태그 이름이 됨  -->
</body>
</html>
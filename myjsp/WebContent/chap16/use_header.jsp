<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
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
<my:header title="텍스트 제목" level="2"></my:header> <h2>텍스트 제목</h2>
<my:header title="${'EL 제목' }" level="3"></my:header> <h3>EL 제목</h3>
<my:header title='<%= "표현식 제목" %>'></my:header> <h1>포현식 제목</h1>
<!--EL이나 스크립트요소 안에 적힌 텍스트를 그대로 리턴하려면 작은 또는 큰 따옴표로 감싸면 안에 들어있는 텍스트를 리턴함  -->
</body>
</html>
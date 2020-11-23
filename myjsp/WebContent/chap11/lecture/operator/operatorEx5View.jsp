<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
<h1>같은 값 여부 : ${param.param1 == param.param2 }</h1>
<h1>같은 값 여부 : ${param.param1 eq param.param2 }</h1>
<h1>다른 값 여부 : ${param.param1 != param.param2 }</h1>
<h1>다른 값 여부 : ${param.param1 ne param.param2 }</h1>
<h1>더 작은 값 : ${param.param1 < param.param2 }</h1>
<h1>더 작은 값 : ${param.param1 lt param.param2 }</h1>
<h1>더 큰 값 : ${param.param1 > param.param2 }</h1>
<h1>더 큰 값 : ${param.param1 gt param.param2 }</h1>
<h1>작거나 같음 : ${param.param1 <= param.param2 }</h1>
<h1>작거나 같음 : ${param.param1 le param.param2 }</h1>
<h1>크거나 같음 : ${param.param1 >= param.param2 }</h1>
<h1>크거나 같음 : ${param.param1 ge param.param2 }</h1>
</body>
</html>
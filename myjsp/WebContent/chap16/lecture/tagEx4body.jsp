<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lectrue" %>
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
<!--body-content속성 값을 tagdepedent로 설정하면 태그에 포함된 내용물이 글자 그대로 출력됨-->
<!--몸체 내용 자체를 텍스트 값으로 사용(텍스트 값이므로, jsp:body태그의 var속성으로 어떤 변수에 그 값을 할당해서 재사용 할 수 있음-->
<my:ex4bodyTagDependent>
	<%
	out.print("hello");
	%>
	${param.abc }
</my:ex4bodyTagDependent>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
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
<!--커스텀 태그의 속성(c:if 태그의 test속성처럼)을 설정하는 방법-->
<c:if test="true">
	<h3>실행</h3>
</c:if>
<!--attribute를 태그 파일에서 name을 정의하면 해당 속성을 커스텀태그에서 사용 가능-->
<!--required값이 true이면 해당 속성은 해당 태그 사용 시 반드시 작성되어야 함-->
<my:ex5attr myAttr2="my value2"></my:ex5attr>
</body>
</html>
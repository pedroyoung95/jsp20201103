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
<script>
$(function() {
	$("#modify-btn").click(function() {
		$("#title-input").removeAttr("readonly");
		$("#body-textarea").removeAttr("readonly");
		$(this).hide();
		$("#submit-btn").removeAttr("hidden");
	});
});
</script>
</head>
<body>
<c:url value="/sample3/post/remove" var="removeURL">
	<c:param name="id" value="${post.id }"></c:param>
</c:url>
<c:url value="/sample3/post/modify" var="modifyURL">
	<c:param name="id" value="${post.id }"></c:param>
</c:url>

<div class="container">
	<h1>게시물 보기</h1>
	<form action="">
		제목 : <input type="text" value="${post.title }" readonly/> <br />
		<textarea name="body" id="" cols="30" rows="5" readonly>${post.body }</textarea> <br />
	</form> 
<a href="${modifyURL }" class="btn btn-secondary">수정</a>
<br />
<a href="${removeURL }" class="btn btn-danger" onclick="return confirm('삭제하시겠습니까?')">삭제</a>
</div>
</body>
</html>
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
<h1>contextPathEx2</h1>
<jsp:include page="/chap04/lecture/contextPathEx2Sub.jsp"></jsp:include>
<!--내부에서 접근시에는 컨텍스트경로를 굳이 포함시킬 필요X-->
<!--'jsp:include' : 다른 jsp파일을 포함시키는 기능  -->
<br />
<a href="<%= request.getContextPath() %>/chap04/lecture/contextPathEx2Sub.jsp">to sub.jsp</a>
<!--외부에서 접근시에는 컨텍스트경로를 포함시켜야 함-->
<!--getContextPath()는 / 로 시작  -->
</body>
</html>
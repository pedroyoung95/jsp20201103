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
<h1>path</h1>
<a href="<%= request.getContextPath()%>/chap04/lecture/contextPathEx2.jsp">other file</a>
<!--'/'로 시작하면 절대경로-->
<!--context root 이름부터 파일 명까지 전부 다 url에 기입됨-->
<br />
<a href="contextPathEx2.jsp">other file2</a>
<!--'/'로 시작하지 않으면 상대경로-->
<!--마지막 '/'뒤부터 상대경로로 작성된 것이 기입됨-->
<!--상대경로는 서버나 클라이언트 두 입장에서 같음-->
<br />
<a href="<%= request.getContextPath()%>/chap04/lecture/subfolder/pathEx1Sub.jsp">절대경로</a>
<br />
<a href="subfolder/pathEx1Sub.jsp">상대경로</a>

</body>
</html>
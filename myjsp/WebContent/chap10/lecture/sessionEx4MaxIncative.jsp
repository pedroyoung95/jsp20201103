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
session.setMaxInactiveInterval(5); /*세션 활성화 시간을 설정하는 메소드(단위는 초)*/
/*이 메소드를 실행한 세션의 활성화 시간만 해당*/
/*모든 세션에 공통된 활성화 시간을 적용하려면 dynamic project파일의 설정파일인 web.xml를 통해 시간 설정*/
/*파라미터 값의 시간이 지난 후 새로고침하면 새로운 세션ID가 나옴(새로운 세션 생성)*/
long max = session.getMaxInactiveInterval();
%>
session id : <%= session.getId() %> <br />
max inactive interval : <%= max %>
</body>
</html>
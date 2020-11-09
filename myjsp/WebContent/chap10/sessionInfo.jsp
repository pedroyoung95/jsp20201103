<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Date time = new Date();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!--세션생성시간, 접속시간을 연월일 시분초 형태로 나타내기 위한 객체 생성-->
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
세션ID : <%= session.getId() %> <br />
<!--새 브라우저로 실행할 때마다 세션ID가 다름(새로운 세션 생성)-->
<!--클라이언트가 서버에 1번째 request 객체 생성(처음으로 요청)-->
<!--서버는 1번째 요청에 대한 응답으로 response에 sessionID을 담아서 응답  -->
<!--그 다음인 2번째 부터의 request는 sessionID를 갖고 있음-->
<!--서버는 그 sessionID를 보고 맞는 session객체를 찾아서 응답함-->
<%
time.setTime(session.getCreationTime());
%>
세션생성시간 : <%= formatter.format(time) %> <br />
<!--새 브라우저로 세션을 만들기 전까지는 세션생성시간은 동일-->
<%
time.setTime(session.getLastAccessedTime());
%>
최근접속시간 : <%= formatter.format(time) %> <br />
세션유지시간 : <%= session.getMaxInactiveInterval() %>
<!--web.xml에 분 단위의 시간이 모든 jsp의 세션의 활성화 시간이 됨-->
<!--기본 활성화 시간은 30분-->
</body>
</html>
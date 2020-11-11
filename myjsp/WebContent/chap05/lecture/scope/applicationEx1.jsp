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
<h1>java 웹 앱의 4개의 영역</h1>
<ul>
<li>page - pageContext 객체(하나의 jsp페이지가 갖는 객체)</li>
<li>request - request 객체(여러 jsp페이지가 request 객체를 통해 요청정보를 공유)</li>
<li>session - session 객체(여러 jsp페이지가 session을 통해 하나의 브라우저 내에서 정보를 공유)</li>
<li>application - application(특정 웹 앱에 포함된 모든 jsp페이지가 공유)</li>
</ul>

<%
//page에 attribute 값을 설정해도 현재 jsp페이지에서만 읽을 수 있으므로 안 적음
request.setAttribute("reqAttr1", "reqVal1"); //하나의 jsp페이지의 요청 내에서 request 객체 공유
session.setAttribute("sessionAttr1", "sessionVal1"); //하나의 브라우저 내애서 session 객체 공유
application.setAttribute("appAttr1", "appVal1"); //여러 브라우저가 application 객체를 공유
//session과 application은 여러 스레드가 공유하는 객체이므로, 가능한 사용하지 않아야 함
//가장 좁은 객체인 request를 사용하는 것이 좋음
%>
</body>
</html>
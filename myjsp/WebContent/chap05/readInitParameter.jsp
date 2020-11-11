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
<title>초기화 파라미터 읽어오기</title>
</head>
<body>
초기화 파라미터 목록:
<ul>
<%
Enumeration<String> initParamEnum = application.getInitParameterNames();
while(initParamEnum.hasMoreElements()) {
	String initParamName = initParamEnum.nextElement();			
%>
<li>
<%= initParamName %> = <%= application.getInitParameter(initParamName) %>
<!--getInitParameter() : 
해당 웹 앱의 초기 파라미터(웹 앱이 처음 실행 될 때 담긴 정보)를 읽어오는 메소드  -->
</li>
<%
}
%>
</ul>
</body>
</html>
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
<h1>pageContext methods:기본 객체 얻기</h1>
request : <%= request == pageContext.getRequest() %> <br />
session : <%= session == pageContext.getSession() %> <br />
application : <%= application == pageContext.getServletContext() %> <br />
<!--application은 이름이 application, ServletContext 두 가지가 있다고 생각하면 됨-->

response : <%= response == pageContext.getResponse() %> <br />

out : <%= out == pageContext.getOut() %> <br />
page : <%= page == pageContext.getPage() %> <br />
config : <%= config == pageContext.getServletConfig() %> <br />	
</body>
</html>
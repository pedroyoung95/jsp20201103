<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!--
교제 254쪽
pageContext : pageContext 타입(JSP의 page 기본 객체), list나 map이 아님. 
 -> Bean도 아니지만 Bean처럼 get메소드로 인해 property를 갖을 수 있음.
 	따라서 EL을 작성할 때도, Bean클래스 처럼 property 호출하듯이 작성하면 됨
 	
pageScope : Map 객체
requestScope : Map 객체
sessionScope : Map 객체
applicationScope : Map 객체

param : request 파라미터를 담고 있는 Map 객체
paramValues : Map 객체
header : Map 객체
headerValues : Map 객체
cookie : Map 객체
initParam : Map 객체
-->
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
${pageContext } <br />
${pageSCope } <br />
${requestScope } <br />
${sessionScope } <br />
${applicationScope } <br />
${param } <br />
${paramValues } <br />
${header } 	<br />
${head } <br />
${headValues } <br />
${cookie } <br />
${initParam } <br />

</body>
</html>
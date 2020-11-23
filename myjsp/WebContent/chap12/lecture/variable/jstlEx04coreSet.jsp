<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
pageContext.setAttribute("myvar1", "my value1");
String myVal3 = "hello";
%>
<%-- <c:set> 태그 : 변수나 변수의 프로퍼티 값을 지정할 때 사용  --%>
<c:set var="myvar2" value="my value2"></c:set> <!--scope 설정 안하면 기본값으로 page에 저장됨  -->
<c:set var="myvar3" value="<%= myVal3 %>"></c:set>
<c:set var="myvar4" value="${myvar2 }"></c:set>
<c:set var="myvar5">
	<h1>hello world!!!</h1>
</c:set>
${myvar1 } <br />
${myvar2 } <br />
${myvar3 } <br />
${myvar4 } <br />
${myvar5 } <br />
</body>
</html>
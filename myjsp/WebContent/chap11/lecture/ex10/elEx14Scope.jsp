<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!--
각 영역의 attribute를 <name, object>쌍으로 갖는 Map 객체
pageScope
requestScope
sessionScope
applicationScope
-->
<%
pageContext.setAttribute("myAttr1", "my Value1!!!");
pageContext.setAttribute("my attr1", "my value1");
request.setAttribute("myAttr1", "my request Value1!!!");
request.setAttribute("myAttr2", "my Value2!!!");
%>
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
${myAttr1 } <br />
${pageScope["my attr1"] } <br />
${requestScope.myAttr1 } <br /> <!--request영역에 해당이름으로 저장된 attribute를 Map 방식으로 출력-->
${myAttr2 } <br /> <!--page 영역에서부터 해당 이름의 attribute를 탐색해서 출력-->
</body>
</html>
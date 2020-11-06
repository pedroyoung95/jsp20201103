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

<h1>main jsp</h1>
<%
Object o = new Object();
System.out.println(o.hashCode());
out.print(o.hashCode());

request.setAttribute("obj",o); 
/*request에 객체를 담는 걸 attribute라고 부름*/
/*setAttribute메소드를 통해 request에 담을 객체를 이름을 붙여서 저장*/
%>
<jsp:forward page="subEx1.jsp">
	<jsp:param value="newVal" name="newParam"></jsp:param>
</jsp:forward>
<!--jsp:param은 String 타입만 넘겨줄 수 있음-->

</body>
</html>
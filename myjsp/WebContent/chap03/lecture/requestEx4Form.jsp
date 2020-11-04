<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
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
<!--form 내부에 작성되는 것들이 제출될 곳을 action에 명시-->
<!--action attribute에 값이 없으면 현재 페이지로 제출됨  -->
<form action="requestEx4Process.jsp">
<input type="text" name="id"/> <br />
<input type="text" name="pw"/> <br />
<input type="text" name="age" /> <br />
<input type="submit" value="전송" class="btn btn-success"/>
</form>
</body>
</html>
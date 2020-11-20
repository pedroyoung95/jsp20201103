<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="chap08.Car" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty name="car" property="name" value="kia" />
</jsp:useBean>

<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty name="car2" property="name" value="volvo"></jsp:setProperty>
</jsp:useBean>

<%
Car car3 = new Car();
car3.setName("benz");
request.setAttribute("car", car3);
%>

<%
//pageContext.setAttribute("car", car);
//pageContext.setAttribute("car2", car2);
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
${car } <!--각 영역의 "car" attribute를 찾음(가장 작은 영역부터 찾음)-->
<br />
${car.name } 
<!--car3는 request에 넣어두었지만 같은 car라는 이름의 page에있는 car가 먼저 찾아져서 name 값이 kia가 나옴
-->
<br />
${car2 }
<br />
${car3 } <!--표현언어는 값이 없는 경우 예외가 나지 않고 출력만 되지 않음-->
</body>
</html>
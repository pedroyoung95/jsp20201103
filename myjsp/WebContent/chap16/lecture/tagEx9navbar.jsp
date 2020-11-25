<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
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
List<String> list = new ArrayList<>();
list.add("Home");
list.add("Store");
list.add("SignUp");
list.add("About");

request.setAttribute("menus", list);
%>
<my:ex9navbar form="false"></my:ex9navbar>
<!--request의 attribute로 저장해두면 커스텀 태그의 attribute를 사용 안 할 수 있음-->
<!--위 커스텀 태그는 커스텀 태그의 내용 부분에 있는 코드를 그대로 적은 것과 동일-->
<!--커스텀 태그의 c:forEach의 items속성 값에 EL로 menus라는 attribute를 찾게 하면 request에서 동일 한 이름의 attribute를 찾아서 리턴함-->
<!--커스텀 태그를 사용하는 것이 커스텀 태그의 내용 부분의 적힌 코드를 그대로 가져다 쓴 것과 동일하다는 점을 이용-->
</body>
</html>
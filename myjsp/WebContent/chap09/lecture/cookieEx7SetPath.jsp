<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie cookie = new Cookie("mycookie2", "mycookie2-path");
cookie.setPath("/myjsp/chap09");
cookie.setHttpOnly(true); //커스터마이징 된 쿠키를 사용 못하게 막음
response.addCookie(cookie);
//만들어진 쿠키는 따로 경로설정을 안 하면 만들어진 경로 및 하위 경로 영역까지만 존재
//상위 경로에는 해당 쿠키 생성X
//경로를 지정해주면 해당 경로 포함 하위 경로까지 쿠키 존재
//myjsp 안 chap09폴더에 속한 모든 파일에는 mycookie2라는 이름의 쿠키 사용 가능
//JSESSIONID 쿠키는 기본 경로가 context root임
//여기선 myjsp가 context root, 즉 myjsp 안 모든 파일에서 접근 가능
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
<h1>쿠키 path랑 포함</h1>
</body>
</html>
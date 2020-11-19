<%@page import="chap08.member.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
//MemberInfo m = new MemberInfo();
%>
<jsp:useBean id="member" class="chap08.member.MemberInfo" scope="page"></jsp:useBean>
<!--
jsp:useBean 액션태그를 통해 클래스의 객체를 생성
id : 객체를 담을 변수 이름 역할(객체에 접근할 때 사용할 이름
class : 인스턴스를 만들 클래스를 패키지까지 풀네임으로 작성
scope : 인스턴스를 저장할 영역 지정(page, request, session, application). 기본값은 page
-->
<%
Object o = pageContext.getAttribute("member");
System.out.println(o);
System.out.println(member);
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

</body>
</html>
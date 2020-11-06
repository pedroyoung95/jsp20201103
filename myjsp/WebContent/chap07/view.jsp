<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String code = request.getParameter("code");
String viewPageURI = null;

if(code.equals("A")) {
	viewPageURI = "viewModule/a.jsp";
} else if(code.equals("B")) {
	viewPageURI = "viewModule/b.jsp";
} else if(code.equals("C")) {
	viewPageURI = "viewModule/c.jsp";
}
%>
<jsp:forward page="<%= viewPageURI %>"></jsp:forward>
<!--forward 액션 태그로 a/b/c jsp파일로 넘어갔기 때문에  -->
<!--a jsp파일의 주소가 uri에 나오는 것이 아니라 view 파일 주소와 code파라미터의 값이 나옴-->

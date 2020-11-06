<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
response.sendRedirect("redirectEx1target.jsp");
%>
<!--jsp.forword : 코드가 실행되다가 지정한 곳으로 진행흐름이 넘어감-->
<!--파일을 실행하면 주소창에 실행한 파일이 나옴-->
<!--request 메소드는 기존 request객체가 유지됨-->

<!--sendRedirect : 응답이 끝나면 지정한 곳으로 요청하라는 기능 -->
<!--파일을 실행하면 실행한 파일이 아닌 sendRedirect로 지정한 파일이 주소창에 나옴-->
<!--redirectEx1을 실행하면 요청이 생겼다가 sendRedirect로 인해 target파일의 요청이 생기면서 실행-->
<!--총 2번의 요청(request 객체)생성-->
<!--response 메소드는 다른 곳으로 요청을 생성할 때마다 request 객체가 생성됨-->
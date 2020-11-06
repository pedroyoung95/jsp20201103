<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
String han = "한글";
String hanEncoded = java.net.URLEncoder.encode(han, "utf-8");
String queryString = "?" + "name=abc&id=def&han=" + hanEncoded;
response.sendRedirect("redirectEx2target.jsp" + queryString);
//redirectEx2실행하면서 생성되는 request객체와 
//response에 위해 실행되는 redirectEx2target의 request가 다르므로 파라미터 직접 전달 불가
//대신, sendRedirect에 의해 실행되는 파일에 query string을 붙여서 파라미터 전달 가능
%>
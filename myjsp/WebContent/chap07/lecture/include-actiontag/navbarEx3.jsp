<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<h1>navbar ex3</h1>
<%= request.getParameter("name") %>
<!--같은 request 객체이므로, 파라미터를 얻어오는 메소드의 결과가 동일-->
<%= request.getParameter("newparam")%>
<%= request.getParameter("newparam2") %>
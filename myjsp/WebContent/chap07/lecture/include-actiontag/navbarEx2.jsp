<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<h1>navbar ex2</h1>

request 참조 값 : <%= System.identityHashCode(request) %>

<br />
<%= request instanceof HttpServletRequest %>
<br />
<%= request instanceof ServletRequestWrapper %>
<!--navbarEx2파일은 bodyEx2에서 include되었기 때문에 include메소드에 의해-->
<!--request 객체가 ServletReqeustWrapper로 wrapping되기 때문에 instanceof로 확인하면 true-->
<br />

<%
Object original =((ServletRequestWrapper) request).getRequest();
out.print(System.identityHashCode(original));
%>
<!-- 액션 태그로 포함된 파일의 request객체와 포함받은 파일의 request객체는 사실상 같음 -->
<!--포함되는 request객체를 wrapping하기 때문에 참조값이 다르게 나옴.-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<h1>navbarEx2</h1>
request 참조 값 : <%= System.identityHashCode(request) %>

<br />
<%= request instanceof HttpServletRequest %>
<br />
<%= request instanceof ServletRequestWrapper %>
<br />

<%
Object original =((ServletRequestWrapper) request).getRequest();
out.print(System.identityHashCode(original));
/*액션 태그로 포함된 파일의 request객체와 포함받은 파일의 request객체는 사실상 같음*/
/*포함되는 request객체를 wrapping하기 때문에 참조값이 다르게 나옴.  */
%>

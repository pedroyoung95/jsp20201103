<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter() 메소드 사용</b><br />
name 파라미터 = <%= request.getParameter("name") %> <br />
address 파라미터 = <%= request.getParameter("address") %>

<p>
<b>request.getParameterValues() 메서드 사용</b><br />
<%
String[] values = request.getParameterValues("pet");
if(values != null) {
	for(int i = 0; i < values.length; i++) {
%>
	<%= values[i] %>
    <%	
	}
}
%>

</p>
<p><b>request.getParameterNames() 메서드 사용</b><br />
<%
Enumeration paramEnum = request.getParameterNames();
while(paramEnum.hasMoreElements()) {
	String name = (String)paramEnum.nextElement();
%> 
	<%= name %>
<%
}
%>

</p>
<p><b>request.getParameterMap() 메서드 사용</b><br />
<%
Map parameterMap = request.getParameterMap();
/*파라미터 이름과 그 값을 쌍으로 저장  */
String[] nameParam = (String[])parameterMap.get("name");
/*파라미터 이름이 name인 것은 '이름'index, 그 값은 index에 적은 것  */
if(nameParam != null) {
%> 
name = <%= nameParam[0] %>
<%
}
%>
</p>
</body>
</html>
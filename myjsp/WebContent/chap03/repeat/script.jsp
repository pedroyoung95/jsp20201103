<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
Set<Integer> genfiture() {
	Set<Integer> lotto = new java.util.HashSet<>();
	
	while(lotto.size() < 8) {
		lotto.add((int)(Math.random()*100+1));
	}
	return lotto;
}
%>

<%!
String judge(int num) {
	if(num>=75) {
		return "danger";
	} else if(num>=55) {
		return "warning";
	} else if(num>=35) {
		return "dark";
	} else if(num>=20) {
		return "secondary";
	} else {
		return "success";
	}
}
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
<%
java.util.Set<Integer> fiture = genfiture();
%>

<% for(int num : fiture) {
%>
<button class="btn btn-<%= judge(num)%>">nuclear<%= num %></button>	
<%
}
%>

</body>
</html>
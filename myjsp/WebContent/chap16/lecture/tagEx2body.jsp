<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lectrue" %>
<% request.setCharacterEncoding("utf-8"); %>
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
<my:ex2bodyEmpty/>
<hr />
<my:ex2bodyEmpty></my:ex2bodyEmpty>
<hr />
<%-- <my:ex2bodyEmpty> </my:ex2bodyEmpty> body-content속성 값이 empty면 태그 사이에 빈 칸도 없어야 함(빈 칸도 하나의 내용물이므로)--%>
<hr />
<my:ex2bodyScriptless></my:ex2bodyScriptless> <!--body-content속성 값이 empty가 아니면 내용 추가가 가능해짐(기본값이 scriptless이기 때문)-->
<hr />
<my:ex2bodyScriptless>
	body content
</my:ex2bodyScriptless> <%--tag파일에서 <jsp:doBody/> 태그가 있어야 태그 사이에 포함된 내용이 출력됨 --%>
<%-- body-content속성 값이 scriptless면 스크립트 요소(scriptlet, expression, declaration)를 포함할 수 없음
scriptless는 기본값
<my:ex2bodyScriptless>
	<%
	out.print("hello");
	%>
</my:ex2bodyScriptless> --%>
<hr />
<my:ex2bodyScriptless>
	${param.age + 100 }
</my:ex2bodyScriptless>
</body>
</html>
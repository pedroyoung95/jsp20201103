<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
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
<!--fragment를 true로 지정하면 속성값을 jsp:attribute액션태그로 따로 빼서 전달할 수 있음-->
<!--fragment로 속성값을  전달하고나서 그 속성값을 출력하려면, 태그파일에서 jsp:invoke태그의 fragment속성 값으로  사용하려는 커스텀 태그의 속성명을 할당해야 함 -->
<!--jsp:attribute가 태그의 몸체처럼 보이므로, 실제 몸체를 따로 명시하기위해 jsp:body태그를 사용(몸체 내용을 읽기 위해 태그파일에서 jsp:doBody 사용) -->
<my:ex7fragment>
	<jsp:attribute name="title"><h1>my title</h1></jsp:attribute> 
	<jsp:body> 
		<h1>jsp body</h1>
	</jsp:body>
</my:ex7fragment>
</body>
</html>
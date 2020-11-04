<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!--post 방식에서 한글이 인코딩이 가능하도록 인코딩을 utf-8로 설정해야 함 -->
<!--form을 처리하는 process도 인코딩을 넣어줘야 함  -->
<!--크롬브라우저에서만 유효함.  -->
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
<!--form의 전송방식은 method=""의 값으로 결정. 기본값은 get방식.  -->
<!--post방식으로 보내면, 주소창이 아닌 Form Data를 통해 전달  -->
<form action="requestEx8Process.jsp" method="post">
id : <input type="text" name="id" />
pw : <input type="password" name="pw" />
<input type="submit" value="로그인" />
</form>
</body>
</html>
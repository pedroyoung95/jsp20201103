<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
${"a" == "a" } <br />
<hr />
${"a" < "b" } <br /> <!--문자열 비교 시, 부등호는 문자열의 유니코드 값을 기준으로 판별함  -->
<hr />
${"11" < "2" } <br /> <!--숫자지만 둘 다 문자열이므로, 문자열의 유니코드 값을 기준으로 비교연산 수행  -->
<hr />
${"11" < 2 } <br /> <!--문자열과 숫자 비교시 문자열을 숫자로 변환 후 비교연산 수행  -->

</body>
</html>
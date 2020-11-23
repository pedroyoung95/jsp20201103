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
${4 + 5 } <br />
${3 - 7 } <br />
${9 * 9 } <br />
${15 / 2 } <br />
${15 div 2 } <br /> <!-- 키워드 형태의 산술연산자도 있음 --> 
${31 % 3 } <br />
${31 mod 3 } <br />
${"10" + 5 } <br /> <!--수로 변환될 수 있는 string이면 수로 변환해서 연산 수행  -->
<%-- ${"ten" + 5 } <br /> 수로 변환이 안 되면 연산 안 됨 --%>
${abc + 5 } <br /> <!--null과 연산하면 null을 0으로 변환해서 계산  -->
</body>
</html>
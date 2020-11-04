<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
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
<!--input에 적힌 내용이 전송버튼에 의해 전송이 되려면 form으로 감싸야 함  -->
<form>
 <input type="text" name="id"/> <br />
 <input type="text" name="pw"/> <br />
 <input type="password" name="pw2" /> <br />
 <input type="number" name="age" value="0"/> <br />
 <input type="date" name="date"/> <br />
 <input type="submit" value="전송" />
</form>
<!--브라우저가 서버에 '요청' or 서버가 '요청'받은 정보를 알고 싶을 때 request 객체 사용  -->
<%
/*getParameter(): 동일한 이름의 파라미터 값을 구함 */
String val1 = request.getParameter("id");
String val2 = request.getParameter("pw");
String val3 = request.getParameter("pw2");
String val4 = request.getParameter("age");
int val4int = 0;
if(val4 != null) {
	val4int = Integer.valueOf(val4);
}
String val5 = request.getParameter("date");
%>
id : <%= val1 %> <br />
pw : <%= val2 %> <br />
pw2 : <%= val3 %> <br />
age : <%= val4 %> <br />
date : <%= val5 %> <br />
</body>
</html>
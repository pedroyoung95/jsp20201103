<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT commission FROM employee WHERE eno = 7499";

Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
String id = "c##mydbms";
String pw = "admin"; 

long commission = 0L;
try(Connection conn = DriverManager.getConnection(url, id, pw);
	Statement stmt = conn.createStatement();) {

	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()) {
		commission = rs.getLong("commission"); 
		//salary 데이터칼럼이 NUMBER타입이므로, 쿼리 실행 결과를 숫자타입으로 받을 수 있음
		//SQL 값이 null인 경우, 0 리턴
	}
} catch (Exception e) {
	e.printStackTrace();
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
<h1><%= commission %></h1>
</body>
</html>
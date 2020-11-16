<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
//String sql = "SELECT ename FROM employee WHERE eno = " + eno;
String sql = "SELECT ename FROM employee "
				+ "WHERE eno = ? "; //값이 있는 것처럼 ?를 사용할 수 있음
						
Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw); 
//Statement stmt = con.createStatement();
PreparedStatement stmt = con.prepareStatement(sql); 
//쿼리문에 ?를 사용하려면 PreparedStatement 타입으로 만들어야 함
		
stmt.setInt(1, Integer.valueOf(eno)); //물음표에 내용을 채우는 코드
//1번 파라미터 : 몇 번째 물음표인지 지정
//두 번째 파라미터 : 물음표에 넣을 값
//setInt 외에, setString 등 다른 타입의 값을 넣을 수 있는 메소드도 있음
		
//파라미터로 이미 sql을 받았으므로, executeQuery()메소드의 파라미터는 비워야 함
ResultSet rs = stmt.executeQuery(); 

String name = "";
if(rs.next()) {
	name = rs.getString(1);
}

stmt.close();

con.close();
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
<h1><%= name %></h1>
</body>
</html>
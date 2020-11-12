<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT loc FROM department WHERE dno = 10"; //실행할 데이터베이스 실행문이 담긴 변수
//1. JDBC 드라이버 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");
//DBMS와 연결하기 위한 클래스를 만드는 작업. 각 DBMS 회사 별 드라이버를 설치해야 함.
//여기선 오라클 드라이버를 사용.

//2. 데이터 베이스 커넥션 구함
Connection con = null; //커넥션 인터페이스가 구현된 인터페이스 생성
Statement stmt = null; //3번에서 사용할 statement 객체 변수 선언
ResultSet rs = null; //4번에서 사용할 쿼리를 실행할 ResultSet 타입의 객체 변수 선언

String url = "jdbc:oracle:thin:@localhost:1521:orcl"; //localhost에 ip주소가 들어감
String id = "c##mydbms";
String pw = "admin";
con = DriverManager.getConnection(url, id, pw); //커넥션을 얻어와서 커넥션 객체에 담음

//3. 쿼리 실행을 위한 statement 객체 생성
stmt = con.createStatement();

//4. 쿼리 실행
rs = stmt.executeQuery(sql);

//5. 쿼리 실행 결과 사용
String location = "";
while(rs.next()) {
	location = rs.getString("loc"); 
	//getString(칼럼이름) : 해당 칼럼의 값을 얻음
	//Iteration처럼 다음 값이 있는지 확인하고, 있으면 그 값을 얻는 방식
}

//6. statement 종료
stmt.close();

//7. 데이터베이스 커넥션 종료
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
<h1>성공</h1>
<h1><%= location %></h1>
</body>
</html>
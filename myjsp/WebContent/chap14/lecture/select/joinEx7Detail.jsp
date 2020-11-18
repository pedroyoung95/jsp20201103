<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%@page import="chap14.Employee" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
Class.forName("oracle.jdbc.driver.OracleDriver");

/* String sql = "SELECT e.eno, e.ename, e.hiredate, e.salary, d.dname, e.job, s.grade, e2.ename " 
				+ "FROM employee e, department d, salgrade s, employee e2 " 
				+ "WHERE e.eno = ? "
				+ "AND e.dno = d.dno "
				+ "AND e.salary BETWEEN losal AND hisal "
				+ "AND e.manager = e2.eno(+)"; */ //오라클 문법으로 OUTER JOIN
String sql ="SELECT e.eno, e.ename, e.hiredate, e.salary, d.dname, e.job, s.grade, e2.ename "
			+ "FROM employee e LEFT OUTER JOIN employee e2 ON e.manager = e2.eno, department d, salgrade s "
			+ "WHERE e.eno = ? AND e.dno = d.dno AND e.salary BETWEEN losal AND hisal";

String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);

PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1, Integer.valueOf(eno));

ResultSet rs = stmt.executeQuery();

Employee e = null;
List<Employee> list = new ArrayList<>();
while(rs.next()) {
	e = new Employee();
	e.setEno(rs.getInt(1));
	e.setEname(rs.getString(2));
	e.setHiredate(rs.getTimestamp(3).toLocalDateTime());
	e.setSalary(rs.getInt(4));
	e.setDname(rs.getString(5));
	e.setJob(rs.getString(6));
	e.setGrade(rs.getInt(7));
	e.setManagerName(rs.getString(8));
	list.add(e);
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
<!--사원 명을 클릭하면 그 사원의 정보가 나옴-->
<div class="container">
<h1>사원 정보</h1>
<ul>
	<li>사번 : <%= e.getEno() %></li>
	<li>이름 : <%= e.getEname() %></li>
	<li>입사일 : <%= e.getHiredate() %></li>
	<li>봉급 : <%= e.getSalary() %></li>
	<li>부서명 : <%= e.getDname() %></li>
	<li>업무 : <%= e.getJob() %></li>
	<li>봉급 등급 : <%= e.getGrade() %></li>
	<li>관리자 이름 : <%= e.getManagerName() %></li>
</ul>
</div>
</body>
</html>
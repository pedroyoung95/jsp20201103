<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
class Emp {
	private String ename;
	private int salary;
	
	public void setName(String ename) {
		this.ename = ename;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getName() {
		return ename;
	}
	public int getSalary() {
		return salary;
	}
}

String dno = request.getParameter("dno");

String sql = "SELECT ename, salary FROM employee "
		+ "WHERE dno = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);

PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1, Integer.valueOf(dno));

ResultSet rs = stmt.executeQuery();

List<Emp> list = new ArrayList<>();

while(rs.next()) {
	Emp e = new Emp();
	e.setName(rs.getString(1));
	e.setSalary(rs.getInt(2));
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
<h1>
<%
switch(Integer.valueOf(dno)) {
	case 10 : 
		out.print("ACCOUNTING");
		break;
	case 20 : 
		out.print("RESEARCH");
		break;
	default : 
		out.print("SALES");
}
%> 부서 직원 목록</h1>
<ul>
<%
for(Emp emp : list) {
%>
	<li><%= emp.getName() %> : <%= emp.getSalary() %></li>
<%
}
%>
</body>
</html>
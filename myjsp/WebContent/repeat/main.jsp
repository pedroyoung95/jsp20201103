<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String email = request.getParameter("email");
String pw = request.getParameter("password");

Map<String, String> idandpw = new HashMap<>();
idandpw.put("abc@gmail.com", "1111");

boolean login = email.equals("abc@gmail.com") && pw.equals("1111");
if(!login) {
	response.sendRedirect("login.jsp?code=1");
} else {
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

<%@ include file="/WEB-INF/repeat/navbar.jsp"%>

<div class="container-fluid mt-3">
  <div class="row">
    <div class="col text-center">
      One of three columns 
      <hr />
      <a href="">link1</a>
      <br />
      <a href="">link2</a>
      <br />
      <a href="">link3</a>
      <br />
      <a href="">link4</a>
      <br />
      <a href="">link5</a>
      <br />
      <a href="">link6</a>
      <br />
      <a href="">link7</a>
      <br />
      <a href="">link8</a>
      <br />
      <a href="">link9</a>
      <br />
      <a href="">link10</a>
      <br />
    </div>
    
    <div class="col-6">      
      <div class="container mx-auto">
<div class="card">
  <img class="card-img-top" src="chicago.jpg" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">John Doe</h4>
    <p class="card-text">Some example text.</p>
    <a href="#" class="btn btn-primary">See Profile</a>
  </div>
</div>
</div>

<jsp:include page="/WEB-INF/repeat/footer.jsp"></jsp:include>

    </div>
    <div class="col text-center">
      One of three columns	
      <hr />	
    </div>
  </div>
</div>

<%
}
%>
</body>
</html>
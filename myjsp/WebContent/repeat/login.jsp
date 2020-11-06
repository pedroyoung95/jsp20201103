<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>My first Web</title>
</head>
<body>
<div class="container-fluid">
</div>

<jsp:include page="/WEB-INF/repeat/navbar.jsp"></jsp:include>

<div class="container-fluid mt-3">
  <div class="row">
    <div class="col text-center">
      One of three columns 
      <br />
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
      
      <div class="container mt-2">
<form action="main.jsp" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<jsp:include page="/WEB-INF/repeat/footer.jsp"></jsp:include>

    </div>
    <div class="col text-center">
      One of three columns		
    </div>
  </div>
</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="container">
<nav class="navbar navbar-expand-sm bg-secondary fixed-top">
<a class="navbar-brand text-white" href="#">Logo</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
    
      <a class="nav-link text-white" href="#">Link 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="#">Link 2</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="#">Link 3</a>
    </li>
    <!-- Dropdown -->
    <li class="nav-item dropdown ">
      <a class="nav-link dropdown-toggle text-white" href="#" id="navbardrop" data-toggle="dropdown">
        Dropdown link
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Link 1</a>
        <a class="dropdown-item" href="#">Link 2</a>
        <a class="dropdown-item" href="#">Link 3</a>
      </div>
    </li>
    <form class="form-inline" action="NewFileProcess.jsp">
    <input class="form-control mr-sm-2" type="text" placeholder="Search" name="search">
    <button class="btn btn-success" type="submit">Search</button>
  </form>
  </ul>

</nav>
</div>
</body>
</html>
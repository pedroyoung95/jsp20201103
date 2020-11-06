<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<nav class="navbar navbar-expand-sm bg-secondary ">
<a class="navbar-brand text-white" href="#">Logo</a>

  <!-- Links -->
  <ul class="navbar-nav mr-auto">
    <li class="nav-item">
    
      <a class="nav-link text-white" href="http://www.naver.com" target="_blank">Naver</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="http://www.daum.net" target="_blank">Daum</a>
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
    </ul>
    <form class="form-inline my-2" action="">
    <input class="form-control mr-sm-2" type="text" placeholder="Search" name="search">
    <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  
</nav>



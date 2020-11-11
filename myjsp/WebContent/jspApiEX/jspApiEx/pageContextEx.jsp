<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
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
<div class="container-fluid mt-3">
  <div class="row">
    <div class="col-2 text-center">
      JSP 2.3 API Javadocs
      <hr />
      <a href="jspApiEx/pageContextEx.jsp">pageContext</a>
      <br />
      <a href="">out</a>
      <br />      
    </div>
    
    <div class="col-8">      
      <div class="container mx-auto">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">객체 이름</th>
      <th scope="col">실제 타입</th>
      <th scope="col">설명</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">pageContext</th>
      <td>javax.servlet.jsp.PageContext</td>
      <td>
      	JSP 페이지에 대한 정보를 저장 <br />
      	pageContext객체는 해당 jsp 페이지에서만 유효
      </td>
    </tr>    
  </tbody>
  </table>

  <br />
  <table class="table">
  <thead>
    <tr>
      <th scope="col">메서드</th>
      <th scope="col">리턴 타입</th>
      <th scope="col">설명</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">getAttribute(String parameterName, int scope)</th>
      <td>Object</td>
      <td>
      	더 큰 영역의 attribute 읽기 <br />
      	1번째 파라미터 : 더 큰 영역의 attribute 이름 <br />
      	2번째 파라미터 : 어떤 더 큰 영인지 알려주는 int 값 <br />
      	ex : pageContext.getAttribute("reqAttr1", PageContext.REQUEST_SCOPE)
      </td>
    </tr>
    <tr>
      <th scope="row">findAttribute(String parameterName)</th>
      <td>Object</td>
      <td>
      	파라미터에 적힌 이름의 attribute의 값을 가장 좁은 영역에서부터 찾음 <br />
      	ex : pageContext.findAttribute("myAttr1")
	  </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
    </tr>
  </tbody>
</table>
	  </div>
	</div>
  </div>
</div>
</body>
</html>
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
<%
String food = request.getParameter("food");
int size = 0;
if(food != null) {
	//세션에 추가
	Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
	/* List<String> cart = (List<String>) session.getAttribute("cart"); */
	if( cart == null) {
		cart = new HashMap<>();
		session.setAttribute("cart", cart);
	}	
	cart.compute(food, (k, v) -> v == null ? 1 : v + 1); 
	
	/* if(cart.containsKey(food)) {
		cart.put(food, cart.get(food) + 1);
	} else {
		cart.put(food, 1);
	} */	
	
	size = cart.size();
}
%>
장바구니 : <%= size %>개
<form action="" method="post">
<select name="food" id="">
	<option value="water">물</option>
	<option value="pizza">피자</option>
	<option value="burger">버거</option>
	<option value="choco">초콜렛</option>
	<option value="icecream">아이스크림</option>
</select>
<br />
<input type="submit" value="장바구니 담기" />
</form>
<a href="cart.jsp">장바구니 보기</a>
<form action="cartInitialize.jsp">
<input type="submit" value="초기화" />
</form>
</body>
</html>
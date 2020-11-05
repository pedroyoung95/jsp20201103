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

<%@ include file="/WEB-INF/repeat/navbar.jsp" %>

<div class="container-fluid mt-2">
<form action="NewFileProcess.jsp">
<input type="text" placeholder="id" name="id" /><br />
<input type="password" placeholder="password" name="pw" />
<input type="submit" value="로그인" />
</form>
</div>

<%@ include file="/WEB-INF/repeat/footer.jsp" %>
</body>
</html>
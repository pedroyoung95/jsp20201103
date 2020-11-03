<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%! /*선언부는 클래스 레벨(필드, 생성자, 메소드 수준)에서 생성됨  */
/*선언부는 html 윗부분에 작성(클래스 레벨이기 때문)  */
/*스크립트릿은 html 내용 수준(out.write을 통해 화면에 띄워지는 곳)에서 생성됨  */
/*html부분은 try코드 블럭 안에 다 들어감  */
int i = 3;
static int j = 10;
%>

<%!
int k = 20;
%>

<%!
void mymethod(){
	System.out.println("hello");}

static void mymethod2(){
	System.out.println("hello static");
}
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

<h1>Lorem ipsum dolor.</h1>
<% mymethod(); %>
<% mymethod2(); %>
</body>
</html>
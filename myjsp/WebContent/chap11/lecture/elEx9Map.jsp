<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("a", "java");
map.put("b", "html");
map.put("c", "css");
map.put("3", "servlet");
map.put("class", "spring");
map.put("my key", "my value");

request.setAttribute("mymap", map);
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
${mymap["a"] }
${mymap["b"] }
${mymap["c"] }
<hr />
<!--자바빈처럼 .(dot)으로 연결해서 값 호출 가능-->
<!--키가 키워드이거나 숫자, 띄어쓰기 등이 아닌 경우만 .으로 호출 가능-->
${mymap.a }
${mymap.b }
${mymap.c } <br />
<!--키가 키워드, 숫자, 띄어쓰기 등이 들어간 경우는 인덱스 키로 호출해야 함-->
${mymap["3"] }
${mymap["class"] }
${mymap['my key'] } <!--작은따옴표 큰따옴표 구분 없이 사용 가능-->
</body>
</html>
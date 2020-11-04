<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로또 당첨 결과</title>
</head>
<body>

<%
Set<Integer> lotto = new HashSet<>();
while(lotto.size()<6) {
	lotto.add((int)(Math.random()*45+1));
}

out.print("당첨 번호: ");
out.print(lotto);
out.print("<br>");
%>

선택한 번호: 
<%
String[] selectNums = request.getParameterValues("num"); 
for(int i = 0; i < selectNums.length; i++) {
	out.print(selectNums[i].substring(1,selectNums[i].length()));
	if(i != selectNums.length-1) {
		out.print(", ");
	}
}
%>

<br />

맞춘 갯수:
<%List<Integer> sixNum = new ArrayList<>();
for(String str : selectNums) {
	Integer intNum = Integer.valueOf(str.substring(1, str.length()));
	sixNum.add(intNum);
}

int count = 0;
for(Integer lottoNum : lotto) {
	for(Integer selectNum : sixNum) {
		if(lottoNum.equals(selectNum)) {
			count++;
		}
	}
}
out.print(count + "개 맞았습니다.");
%>

<br />
<a href="requestEx6Form.jsp">인생 2회차</a>
</body>
</html>
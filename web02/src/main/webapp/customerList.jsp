<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.yeosu.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	List<NoticeVO> list = (ArrayList<NoticeVO>) request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<table class="tb1">
	<thead>
		<tr><th>글번호</th><th>컬럼명2</th><th>컬럼명3</th><th>컬럼명4</th><th>컬럼명5</th><th>컬럼명6</th><th>컬럼명7</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<list.size();i++){
		//해당VO의 객체 선언
		NoticeVO vo = list.get(i);
%>
		<tr><td><%=vo.getNno() %></td><td><%= %></td><td><%= %></td><td><%= %></td><td><%= %></td><td><%= %></td><td><%= %></td></tr>
<%
	}
%>
	</tbody>
</table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content">
	<h2>게시판 목록</h2>
		<div class="board">
			<table>
				<thead>
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
					</tr>
				</thead>
				<tbody>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Class.forName("org.mariadb.jdbc.Driver");		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "select * from board";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
%>
		<tr>
			<td><%=rs.getString("bno") %></td>
			<td><a href='boardDetail.jsp?bno=<%=rs.getString("bno") %>'><%=rs.getString("btitle") %></a></td>
			<td><%=rs.getString("author") %></td>
		</tr>
<%
		}
	} catch(Exception e) {
			e.printStackTrace();	
		
	} finally {
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();	
		}
	}	
					
%>
				</tbody>
			</table>
			<a href="boardInsert.jsp"><input type="button" value="글쓰기"></a>
		</div>
</div>
</div>
</body>
</html>
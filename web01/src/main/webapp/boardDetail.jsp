<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div class="wrap">
<header id="hd" class="panel-heading">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<h2>게시판 글 상세보기</h2>
	<table class="table">
		<tbody>
<%@ include file="connectPool.conf" %>
<%
	sql = "select * from board where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	rs = pstmt.executeQuery();
	if(rs.next()) {
%>			
		<tr><th>게시판 번호</th><td><%=rs.getInt("bno")%></td></tr>
		<tr><th>게시판 제목</th><td><%=rs.getString("btitle")%></td></tr>
		<tr><th>게시판 내용</th><td><%=rs.getString("bcontent")%></td></tr>
		<tr><th>게시판 작성일</th><td><%=rs.getString("regdate")%></td></tr>
		<tr><th>게시판 작성자</th><td><%=rs.getString("author")%></td></tr>
		<tr>
			<td colspan="2">
			<% if(sid.equals("admin")) { %>
				<a href="boardUpdate.jsp?bno=<%=bno%>" class="btn btn-primary">수정</a>
				&nbsp;&nbsp;&nbsp;
				<a href="boardDeletePro.jsp?bno=<%=bno%>" class="btn btn-primary">삭제</a>
				&nbsp;&nbsp;&nbsp;
			<% } %>	
				<a href="board1.jsp" class="btn btn-primary">목록</a>
			</td>
		</tr>
<%		
			}
%>		
<%@ include file="connectClose.conf" %>		
		</tbody>
	</table>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<h2>게시판 글 작성하기</h2>
	<form action="boardInsertPro.jsp" name="boardform" method="post" onsubmit="">
	<table class="table">
		<tbody>
			<tr>
				<td class="necessary">제목</td>
				<td><input type="text" name="btitle" id="btitle"></td>
			</tr>
			<tr>
				<td class="necessary">글내용</td>
				<td><textarea name="bcontent" name="bcontent" id="bcontent"></textarea></td>
			</tr>
			<tr>
				<td class="necessary">작성자</td>
				<td><input type="text" name="author" id="author" value="관리자"></td>
			</tr>						
			<tr>
				<td>
					<input type="submit" value="등록" class="btn btn-primary"> &nbsp;&nbsp;
					<input type="reset" value="취소" class="btn btn-primary"> &nbsp;&nbsp;
					<a href="board1.jsp" class="btn btn-primary">목록</a>
				</td>
			</tr>
		</tbody>
	</table>
	<script>
		function writeCheck(f) {
			var memo = f.bcontent.value;
			if(memo.lengh>=500) {
				alert("500자 이내로 작성해 주십시오.");
				return false;
			} 
		}
	</script>
	</form>	
</div>
</div>
</body>
</html>
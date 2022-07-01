<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="common.css">
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content">
	<h2></h2>
		<form action="joinPro.jsp" method=post onsubmit= "return joinCheck(this)">
			<table class="table">
				<tbody>
				<tr>
					<td class="necessary">아이디 : </td>
					<td>
						<input type="text" name="uid" id="uid" required>
						<input type="button" id="popopen" value="중복확인" class="btn btn-primary" onclick="idCheck()">
						<input type="hidden" id="idck" name="idck" value="">
					</td>
				</tr>
				<tr>
					<td>비밀번호 : </td>
					<td>
						<input type="password" name="pw" id="upw">
					</td>
				</tr>
				<tr>
					<td>비밀번호 확인 : </td>
					<td>
						<input type="password" name="pw2" id="upw2">
					</td>
				</tr>
				<tr>
					<td>이름 : </td>
					<td>
						<input type="text" name="name" id="name">
					</td>
				</tr>
				<tr>
					<td>이메일 : </td>
					<td>
						<input type="text" name="email" id="email">
					</td>
				</tr>
				<tr>
					<td>휴대전화 : </td>
					<td>
						<input type="text" name="phone" id="phone">
					</td>
				</tr>
				<tr>
					<td>주소 : </td>
					<td>
						<input type="text" name="address" id="address">
					</td>			
				</tr>
				</tbody>
			</table>
			<script>
				function idCheck(){
					window.open("pop.jsp", "idwin", "width=400", "height=300");
				}
				function joinCheck(f) {
					if(f.idck!="yes") {
						alert("아이디 중복 검사를 진행하지 않았습니다.")
						return false;
					} 
					if(f.upw.value!=f.upw2.value){
						alert("비밀번호와 비밀번호 확인이 서로 입력값이 다릅니다.")
						return false;
					}
				}
			</script>
		</form>
		<input type="submit" value="회원가입">
		<input type="button" value="회원가입 취소">
	</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>	
</body>
</html>
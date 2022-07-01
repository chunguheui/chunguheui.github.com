<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="panel-heading">
	<h2>Form</h2>
</div>
<div class="panel-body">
	<form method="post" action="form1.jsp" name="frm1">
		<fieldset>
			<legend>폼의 데이터 전송실습</legend>
	<table class="table">
		<tbody>
			<tr>
				<th>
					<label for="name">이름 : </label>
				</th>
				<td>
					<input type="text" name="name" id="name" size="30" maxlength="10" required>
				</td>
			</tr>
				<th>
					<label for="pw">패스워드 : </label>
				</th>
				<td>
					<input type="password" name="pw" id="pw" size="50" required>
				</td>
			</tr>
			<tr>
				<th>
					<label for="qty">주문수량 : </label>
				</th>
				<td>
					<input type="number" name="qty" id="qty" min="2" max="10" step="2">
				</td>
			</tr>
			<tr>
				<th>
					<label for="email">E-MAIL : </label>
				</th>
				<td>
					<input type="email" name="email" id="email" size="50" required>
				</td>
			</tr>
			<tr>
				<th>
					<label for="url">URL : </label>
				</th>
				<td>
					<input type="url" name="url" id="url" size="50">
				</td>
			</tr>
			<tr>
				<th>
					<label for="date">날짜 : </label>
				</th>
				<td>
					<input type="date" name="date" id="date"></input>
				</td>
			</tr>
			<tr>
				<th>
					<label for="comment">Comment : </label>
				</th>	
				<td>
					<textarea cols="50" rows="10" name="comment" id="comment">
					</textarea>
				</td>
			</tr>
			<tr>
				<th>
					<label for="baseball">야구팀 : </label>
				</th>			
			</tr>
			<tr>
				<th>
					<label for="favorite">4강팀 : </label>
				</th>
			</tr>
			<tr>
				<th>
					<label for="victory">우승 예상팀 : </label>
				</th>
			</tr>
			<tr>
				<th>
					<label for="playoff">한국시리즈 플레이오프 진출 예상팀 : </label>
				</th>
				<td>
					<select name="playoff" multiple size="6" id="playoff">
					</select>
				</td>
			</tr>
			<tr>
				<th>
					<label for="file">File Upload : </label>
				</th>
				<td>
					<input type="file" name="file" id="file" class="form-control">
				</td>
			</tr>
			<tr>
				<td colspan="2">
				</td>
			</tr>			
	</tbody>
	</table>
	</fieldset>
	</form>
	</div>
</body>
</html>
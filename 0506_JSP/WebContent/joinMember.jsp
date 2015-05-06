<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: 회원 가입 ::</title>
</head>
<body>
<center>
	<h3>:: 회원 가입하기 ::</h3>
	<hr>
		<form action="joinResult.jsp" method="post">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>이름</td><td align="left"><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>비밀번호</td><td align="left">
				<input type="password" name="password" size="10"/></td>
			</tr>
			<tr>
				<td>이메일</td><td align="left">
				<input type="email" name="email"></td>
			</tr>
			<tr>
				<td>나이</td><td align="left">
				<input type="number" name="age" min="0" max="150" step="1"></td>
			</tr>
			<tr>
				<td>성별</td><td align="left">
				<input type="radio" name="gender" value="0" checked>남자
				<input type="radio" name="gender" value="1">여자
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value=" 가입하기 "/>
				<input type="reset" value=" 다시 쓰기 " />
				</td>
			</tr>
		</table>
		</form>
	<hr>
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>���۵��</title>
</head>
<body>
<center>
	<h3>���� ����ϱ�............<a href=''>LOG-OUT</a></h3>
	<hr>
		<form action="addBoard" method="post">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>����</td><td align="left">
				<input type="text" name="title"/></td>
			</tr>
			<tr>
				<td>�ۼ���</td><td align="left">
				<input type="text" name="nickname" size="10"/></td>
			</tr>
			<tr>
				<td>�ۼ���</td><td align="left">
				<input type="date" name="regdate" size="10"/></td>
			</tr>
			<tr>
				<td>����</td><td align="left">
				<textarea name="content" cols="40" rows="10"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value=" ���� ��� "/></td>
			</tr>
		</table>
		</form>
	<hr>
</center>
</body>
</html>
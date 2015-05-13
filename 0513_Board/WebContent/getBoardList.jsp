<%@page import="java.util.ArrayList"%>
<%@page import="com.samsung.biz.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	ArrayList<BoardVO> boardList = 
		(ArrayList<BoardVO>)request.getAttribute("boardList");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ���</title>
</head>

<body>
	<center>
		<h1>�� ���</h1>
		<h3>
			<%=session.getAttribute("name") %>�� �α��� ȯ���մϴ�...... 
				<a href="logout">Log-out</a>
		</h3>

		<!-- �˻� ���� -->
		<form action="getBoardList" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td align="right">
					<select name="searchCondition">
							<option value="TITLE">����
							<option value="CONTENT">����
					</select> 
					<input name="searchKeyword" type="text" /> 
					<input type="submit" value="�˻�" /></td>
				</tr>
			</table>
		</form>
		<!-- �˻� ���� -->

		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">��ȣ</th>
				<th bgcolor="orange" width="200">����</th>
				<th bgcolor="orange" width="150">�ۼ���</th>
				<th bgcolor="orange" width="150">�����</th>
				<th bgcolor="orange" width="100">��ȸ��</th>
			</tr>
<%
	//for(int i = 0; i < boardList.size(); i++){
	//	BoardVO board = boardList.get(i);
	//}
	for(BoardVO board : boardList){
		int seq = board.getSeq();
%>		
			<tr>
				<th width="100"><%=seq %></th>
				<th width="200"><a href="getBoard?seq=<%=board.getSeq()%>"><%=board.getTitle() %></a></th>
				<th width="150"><%=board.getNickname() %></th>
				<th width="150"><%=board.getRegdate() %></th>
				<th width="100"><%=board.getCnt() %></th>
			</tr>
<%
	}
%>		
		</table>
		<br> <a href="addBoard.jsp">���� ���</a>
	</center>
</body>
</html>












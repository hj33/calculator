<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.samsung.biz.utils.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	// DB 연결, 쿼리실행, 결과 받아오기까지 여기 작성.
	Connection conn = JDBCUtil.getConnection();

	String sql = "select * from husers order by seq desc";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();

%>	    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: 회원 목록 ::</title>
</head>
<body>
<center>
		<h1>회원 리스트</h1>
		<h3>
			가입된 회원 목록입니다.
		</h3>

		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">이름</th>
				<th bgcolor="orange" width="150">이메일</th>
				<th bgcolor="orange" width="150">나이</th>
				<th bgcolor="orange" width="100">성별</th>
			</tr>
			
			<%
				while(rs.next()){
				int seq = rs.getInt("seq");
			%>
			
			<tr>
				<th width="100"><%=seq %></th>
				<th width="200"><%=rs.getString("name") %></th>
				<th width="150"><%=rs.getString("email") %></th>
				<th width="150"><%=rs.getInt("age") %></th>
				<th width="100"><%=rs.getInt("gender") %></th>
			</tr>

		<%
				}	
		%>			
			
			
		</table>
		<br> <a href="joinMember.jsp">회원가입</a>
	</center>
</body>
</body>
</html>

	<%
	JDBCUtil.close(conn, ps, rs);
	%>
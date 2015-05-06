<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.samsung.biz.utils.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	int gender = Integer.parseInt(request.getParameter("gender"));
		
	Connection conn = JDBCUtil.getConnection();
	String sql = "insert into husers(seq, name, password, email, age, gender) values((select nvl(max(seq), 0)+1 from husers), ?, ?, ?, ?, ? )";
		
	PreparedStatement ps = conn.prepareStatement(sql);
	
	ps.setString(1, name);
	ps.setString(2, password);
	ps.setString(3, email);
	ps.setInt(4, age);
	ps.setInt(5, gender);
	
	ps.executeUpdate();
	
	JDBCUtil.close(conn, ps);
	response.sendRedirect("memberList.jsp");	


%>           
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: 가입 내용 확인 :: </title>
</head>
<body>

</body>
</html>
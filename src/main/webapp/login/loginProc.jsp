<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="customer.db.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>loginProc.jsp</h3>
	
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	
	// DB연결
	Connection con = DBCon.getConnection();
		
	// 쿼리실행
	String sql = "select pwd from member2 where id = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	
	// 로그인 경우의 수
	String ypass = "";
	int x = -1;
	String msg = "";
	
	if(rs.next()) {
		ypass = rs.getString("pwd");
		if(ypass.equals(pass)) {
			// 로그인 성공
			x = 1; 
		} else {
			x = 0;
		}
	} else {
		// 아이디 없음
		x = -1;
	}
	
	System.out.println("xxx: " + x);
	
	if(x == 1) {
		// 성공
		session.setAttribute("sessionId", id);
		msg = "../mainForm.jsp";
	} else if(x == 0) {
		// 실패 패스 불일치
		msg = "./loginForm.jsp?msg=0";
	} else {
		// 실패 아이디 없음
		msg = "./loginForm.jsp?msg=-1";
	}
	
	response.sendRedirect(msg);
	%>
	
</body>
</html>
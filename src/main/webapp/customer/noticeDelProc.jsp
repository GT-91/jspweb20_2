<%@page import="customer.dao.NoticeDao"%>
<%@page import="customer.vo.Notice"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
	
	<h3>noticeDelProc.jsp</h3>
	
	<!-- 해당 글을 삭제하고, notice.jsp로 돌아가기 -->
	
	<%
	/* 	
	String seq = request.getParameter("c");
	
	NoticeDao dao = new NoticeDao();
	int delCnt = dao.delete(seq);
	
	if(delCnt > 0) {
		response.sendRedirect("notice.jsp");	
	} else {
		out.write("삭제오류");
	}  
	*/	
	%>
	
</body>
</html>
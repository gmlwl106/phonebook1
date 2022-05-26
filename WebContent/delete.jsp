<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	//파라미터에서 값 가져오기
	int id = Integer.parseInt(request.getParameter("id"));

	//PhoneDao 삭제 메소드 실행
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personDelete(id);
	
	response.sendRedirect("./list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
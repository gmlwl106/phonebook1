<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List" %>
    
<%
	//파라미터에서 값 가져오기
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personUpdate(new PersonVo(id, name, hp, company));
	
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
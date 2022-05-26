<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List" %>
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
	
	System.out.println(personList);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>전화번호부</h1>
	<h2>리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<% for(PersonVo p : personList) { %>
	
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%=p.getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=p.getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=p.getCompany() %></td>
			</tr>
			<tr>
				
			</tr>
		</table>
		<button type="submit">수정</button>
		<button type="submit">삭제</button>
		<br>
	<% } %>
	
	<a href="./writeForm.jsp">추가번호 등록</a>
	
</body>
</html>
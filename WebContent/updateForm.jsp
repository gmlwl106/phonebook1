<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
	int id = Integer.parseInt(request.getParameter("id"));

	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> phoneList = phoneDao.getPersonList();
	
	String name = "";
	String hp = "";
	String company = "";
	for(PersonVo p : phoneList) {
		if(p.getPersonId() == id) {
			name = p.getName();
			hp = p.getHp();
			company = p.getCompany();
			break;
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>수정폼</h2>
	<p>정보를 수정하려면<br>
		아래 항목을 기입하고 "수정" 버튼을 클릭하세요
	</p>
	<form action="./update.jsp" method="get">
		이름(name)      <input type="text" name="name" value="<%=name%>"> <br>
		핸드폰(hp)        <input type="text" name="hp" value="<%=hp%>"> <br>
		회사(company)     <input type="text" name="company" value="<%=company%>"> <br>
		코드(id)      <input type="text" name="id" value="<%=id%>" readonly>
		<br>
		<button type="submit">수정</button>
	</form>
</body>
</html>
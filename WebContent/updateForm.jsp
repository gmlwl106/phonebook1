<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
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
		이름(name)      <input type="text" name="name" value=""> <br>
		핸드폰(hp)        <input type="text" name="hp" value=""> <br>
		회사(company)     <input type="text" name="company" value=""> <br>
		코드(id)      <input type="text" name="id" value="<%=id%>" readonly>
		<br>
		<button type="submit">수정</button>
	</form>
</body>
</html>
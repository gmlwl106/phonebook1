<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List" %>

<% 
	//파라미터에서 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//Person 객체 만들기
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//PhoneDao 객체 만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의 personInsert()를 이용해서 저장하기
	int count = phoneDao.personInsert(personVo);
	System.out.print(count);
	
	//리스트 가져와서 뿌리기
	List<PersonVo> personList = phoneDao.getPersonList();
	
	
	//전송된 정보를 입력시키고 나서 화면 이동시킴
	//writeForm에서 정보입력해서 보냄
	//->[insert에서 받아서 처리(화면으로는 나타나지않고 지나감)]
	//->list로 이동해서 입력된 정보 보여줌
	response.sendRedirect("./list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test
</body>
</html>
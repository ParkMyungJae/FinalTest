<%@page import="test.StudentVO"%>
<%@page import="test.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="00_head.jsp"%>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	int score = Integer.parseInt(request.getParameter("score"));

	StudentDAO instance = StudentDAO.getInstance();

	//StudentVO 형식에 맞춰서 list에 저장해야 하기 때문에 StudentVO의 새로운 인스턴스를 생성해 변수 form에 담아주고 DAO instance의 addStudent로 form을 보낸다.
	StudentVO vo = new StudentVO();
	vo.setId(id);
	vo.setPw(pw);
	vo.setName(name);
	vo.setScore(score);
	
	if(instance.checkId(vo) != -1) {
		out.println("<script> swal({ title: '오류!', text: '중복된 아이디입니다.', icon: 'error', button: '확인'}).then((value)=> {location.href='02_register.jsp'}); </script>");
	}else {
		instance.addStudent(vo);
		out.println("<script> swal({ title: '성공!', text: '" + vo.getName() + "님 가입을 환영합니다.', icon: 'success', button: '확인'}).then((value)=> {location.href='01_index.jsp'}); </script>");
	}
%>
</body>
</html>
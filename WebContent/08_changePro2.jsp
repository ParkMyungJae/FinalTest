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
	int score = Integer.parseInt(request.getParameter("score"));

	StudentDAO instance = StudentDAO.getInstance();
	StudentVO vo = new StudentVO();
	
	vo.setId(id);
	
	int idx = instance.checkId(vo);
	vo.setPw(instance.list.get(idx).getPw());
	vo.setName(instance.list.get(idx).getName());
	vo.setScore(score);

	if (idx != -1) {
		instance.list.set(idx, vo);
		out.println("<script> swal({ title: '성공!', text: '성공적으로 수정되었습니다.', icon: 'success', button: '확인'}).then((value)=> {location.href='01_index.jsp'}); </script>");
	} else {
		out.println("<script> swal({ title: '오류!', text: '아이디가 존재하지 않습니다.', icon: 'error', button: '확인'}).then((value)=> {location.href='03_change.jsp'}); </script>");
	}
	%>
</body>
</html>
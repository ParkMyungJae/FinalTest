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

	StudentDAO instance = StudentDAO.getInstance();
	StudentVO vo = new StudentVO();
	vo.setId(id);
	int idx = instance.checkId(vo);

	if (idx != -1) {
		if (instance.list.get(idx).getPw().equals(pw)) {
			instance.removeStudent(idx);
			out.println("<script> swal({ title: '성공!', text: '정상적으로 삭제되었습니다.', icon: 'success', button: '확인'}).then((value)=> {location.href='01_index.jsp'}); </script>");
		} else {
			out.println("<script> swal({ title: '오류!', text: '비밀번호가 올바르지 않습니다.', icon: 'error', button: '확인'}).then((value)=> {location.href='04_delete.jsp'}); </script>");
			
		}
	} else {
		out.println("<script> swal({ title: '오류!', text: '아이디가 존재하지 않습니다.', icon: 'error', button: '확인'}).then((value)=> {location.href='04_delete.jsp'}); </script>");
	}
	%>
</body>
</html>
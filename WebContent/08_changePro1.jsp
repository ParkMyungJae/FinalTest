<%@page import="test.StudentVO"%>
<%@page import="test.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="00_head.jsp"%>
<body>
	<%@ include file="00_header.jsp"%>

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
	%>

	<div class="container">
		<h1>학생 정보 수정</h1>
		<p>해당 학생의 점수를 수정 가능합니다.</p>

		<form action="08_changePro2.jsp" method="POST">
			<input type="hidden" value="<%=instance.list.get(idx).getId()%>" name="id">
			
			<table class="table table-striped text-center table-hover table-set">
				<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">점수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><%=instance.list.get(idx).getId()%></td>
						<td><%=instance.list.get(idx).getName()%></td>
						<td><input type="number"
							value="<%=instance.list.get(idx).getScore()%>" name="score" style="text-align: center;" maxlength="3"></td>
					</tr>
				</tbody>
			</table>

			<div class="btn-box">
				<button type="submit" class="btn btn-primary">수정하러 가기</button>
			</div>
		</form>
	</div>

	<%
		} else {
		out.println("<script> swal({ title: '오류!', text: '비밀번호가 올바르지 않습니다.', icon: 'error', button: '확인'}).then((value)=> {location.href='03_change.jsp'}); </script>");
		
		}
	} else {
		out.println("<script> swal({ title: '오류!', text: '아이디가 존재하지 않습니다.', icon: 'error', button: '확인'}).then((value)=> {location.href='03_change.jsp'}); </script>");
	}
	%>
</body>
</html>
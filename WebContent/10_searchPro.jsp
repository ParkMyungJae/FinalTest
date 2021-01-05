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
	
	String name = request.getParameter("name");

	StudentDAO instance = StudentDAO.getInstance();
	%>

	<div class="container">
		<h1>학생 정보 검색</h1>
		<h4><%=name%>의 대한 검색결과 입니다.</h4>

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
			<%
			for (int i = 0; i < instance.getSize(); i++) {
				if (instance.list.get(i).getName().equals(name)) {
			%>
				<tr>
					<td><%=i + 1%></td>
					<td><%=instance.list.get(i).getId()%></td>
					<td><%=instance.list.get(i).getName()%></td>
					<td><%=instance.list.get(i).getScore()%></td>
				</tr>
				
			<%
				} else {
					
				}
			}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>
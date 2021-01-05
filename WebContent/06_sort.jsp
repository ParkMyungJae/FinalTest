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

	StudentDAO instance = StudentDAO.getInstance();
	%>

	<div class="container">
		<h1>학생 성적 정렬</h1>
		<h4>성적 순서대로 내림차순 정렬됩니다.</h4>

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
				instance.sortData();
			%>
				<tr>
					<td><%=i + 1 %></td>
					<td><%=instance.list.get(i).getId()%></td>
					<td><%=instance.list.get(i).getName()%></td>
					<td><%=instance.list.get(i).getScore()%></td>
				</tr>
				
			<%
			}
			%>
			</tbody>
		</table>
	</div>
	
	<%@ include file="11_footer.jsp" %>
</body>
</html>
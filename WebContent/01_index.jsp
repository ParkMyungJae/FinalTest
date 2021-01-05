<%@page import="test.StudentVO"%>
<%@page import="test.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="00_head.jsp" %>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	StudentDAO instance = StudentDAO.getInstance();
	%>

	<%@ include file="00_header.jsp" %>

	<div class="container">		
		<h1 style="margin: 40px 0;">학생 가입 정보</h1>
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
				double sum = 0;
				double aver = 0;
				int topCnt = 0;
				int bottomCnt = 0;
				
				for(int i = 0; i < instance.getSize(); i++) {
					sum+=instance.list.get(i).getScore();
					aver = (sum / instance.getSize());
			%>
				<tr>
					<td><%= i + 1 %></td>
					<td><%= instance.list.get(i).getId() %></td>
					<td><%= instance.list.get(i).getName() %></td>
					<td>
						<div style="width: <%= instance.list.get(i).getScore() %>%; max-width:100%; height:20px; background: red; position:relative;">
							<p style="position: absolute; top: 0; left: 100px; text-align: center;"><%= instance.list.get(i).getScore() %></p>
						</div>
					</td>
				</tr>
				
			<% } %>
			</tbody>
		</table>
		<br>
			
		<%
			for(int i = 0; i < instance.getSize(); i++) {
				if(aver <= (double) instance.list.get(i).getScore()) {
					topCnt++;
				}else {
					bottomCnt++;
				}
			}
		%>
		
		<div class="status">
			<p>전체 학생 수 : <%= instance.getSize() %>명</p>
			<p>전체 학생의 총점 : <%=(int)sum %>점</p>
			<p>전체 학생의 평균 : <%=String.format("%.1f", aver) %>점</p>
			<p>평균 이상의 학생들 : <%= topCnt %>명</p>
			<p>평균 이하의 학생들 : <%= bottomCnt %>명</p>
		</div>
	</div>
	
	<%@ include file="11_footer.jsp" %>
</body>
</html>
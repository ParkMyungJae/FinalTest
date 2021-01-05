<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="00_head.jsp"%>
<body>
	<%@ include file="00_header.jsp"%>

	<div class="container">
		<h1>학생 성적 검색</h1>

		<div class="search_box">
			<form action="10_searchPro.jsp" method="POST">
				<div class="input-form">
					<label>이름</label>
					<input type="text" placeholder="검색할 이름을 입력하세요" name="name" required="required">
				</div>
			
				<div class="btn-box">
					<button type="submit" class="btn btn-primary">검색하러 가기</button>
				</div>
			</form>
		</div>
	</div>
	
	<%@ include file="11_footer.jsp" %>
</body>
</html>
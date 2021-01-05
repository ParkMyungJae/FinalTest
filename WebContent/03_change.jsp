<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="00_head.jsp"%>
<body>
	<%@ include file="00_header.jsp"%>

	<div class="container">
		<h1>학생 성적 수정</h1>

		<div class="change_box">
			<form action="08_changePro1.jsp" method="POST">
				<div class="input-form">
					<label>아이디</label>
					<input type="text" placeholder="아이디를 입력하세요" name="id" required="required">
				</div>
				
				<div class="input-form">
					<label>비밀번호</label>
					<input type="password" placeholder="비밀번호를 입력하세요" name="pw" required="required">
				</div>
			
				<div class="btn-box">
					<button type="submit" class="btn btn-primary">수정하러 가기</button>
				</div>
			</form>
		</div>
	</div>
	
	<%@ include file="11_footer.jsp" %>
</body>
</html>
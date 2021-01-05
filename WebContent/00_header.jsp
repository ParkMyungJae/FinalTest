<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div class="top">
		<p id="nowDate" style="margin: 0;"></p>
		
		<script>		
        setInterval(()=> {
        	let date = new Date();
        	nowDate.innerHTML = date.toLocaleString();
		}, .1);
		</script>
		
		<h1>학생 성적 관리 프로그램</h1>
		
		<button class="btn btn-info" onclick="location.href = '01_index.jsp';">메인페이지</button>
		<button class="btn btn-primary" onclick="location.href = '02_register.jsp';">학생 성적 추가</button>
		<button class="btn btn-success" onclick="location.href = '03_change.jsp';">학생 성적 수정</button>
		<button class="btn btn-danger" onclick="location.href = '04_delete.jsp';">학생 성적 삭제</button>
		<button class="btn btn-warning" onclick="location.href = '05_search.jsp';">학생 성적 검색</button>
		<button class="btn btn-secondary" onclick="location.href = '06_sort.jsp';">학생 성적 정렬</button>
		<button class="btn btn-secondary" id="resetBtn" onclick="location.href = '12_reset.jsp';">전체  초기화</button>
	</div>
	
<hr>
<!-- 
<script>
	resetBtn.addEventListener("click", ()=> {
				
	});
	
</script> -->
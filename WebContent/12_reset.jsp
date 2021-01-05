<%@page import="test.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="00_head.jsp"%>
<body>
	<script type="text/javascript">
	swal({
		  title: "정말로 초기화하시겠습니까?",
		  text: "초기화를 진행하면 모든 학생 데이터가 손실됩니다. \n이는 되돌릴 수 없습니다. ",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {			  
		    swal("성공적으로 초기화되었습니다.", {
		      icon: "success",
		    }).then((value)=> {
		    	location.href = "12_resetPro.jsp";
		    });
		    
		  } else {
		    location.href = "01_index.jsp";
		  }
		});
	
	</script>
</body>
</html>
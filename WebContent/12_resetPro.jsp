<%@page import="test.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	StudentDAO instance = StudentDAO.getInstance();

	instance.list.clear();
	
	out.print("<script>location.href='01_index.jsp'</script>");
%>
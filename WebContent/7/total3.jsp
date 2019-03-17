<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
123456789
<br>
<%
	//현재위치에 출력을 수행을 한다.
	out.flush(); //가급접 사용을 하지 않는다.
	
	RequestDispatcher rd = request.getRequestDispatcher("contents.jsp");
	rd.include(request, response);
%>
<br>
ABCDEFG

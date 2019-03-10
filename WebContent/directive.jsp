<!-- 페이지 지시자 -->
<%@ page 
	language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%
	//자바의 기본 페키지 : java.lang.* import를 하지 않는다.
	Date d = new Date();
	System.out.println(d.getTime());
%>
<!-- 인클루드 지시자 -->
<%@ include file="index.jsp" %>
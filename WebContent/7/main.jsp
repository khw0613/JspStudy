<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("uid") ==null){
    	out.print("세션이 모두 삭제되었다.");
    }else{
    	out.print("세션이 존재한다.");
    }
%>

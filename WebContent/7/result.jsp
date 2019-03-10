<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String nickname = request.getParameter("nickname");
    session.setAttribute("nickname", nickname);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
uid : <%=session.getAttribute("uid") %>
upw : <%=session.getAttribute("upw") %>
nickname : <%=session.getAttribute("nickname") %>
<%
	//세션을 모두 삭제 한다.
	session.invalidate();
%>
<a href="main.jsp">메인 화면 이동</a>
</body>
</html>
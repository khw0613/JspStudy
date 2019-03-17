<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.bean.Person"%>
 <%
 	Person obj2 = new Person();
 	obj2.setAge(100);
 	out.println("[1] age : " + obj2.getAge());
 %>
<br>
<jsp:useBean id="obj" class="com.bean.Person"></jsp:useBean>
<jsp:setProperty property="age" name="obj" value="100"/>
[2] age : <jsp:getProperty property="age" name="obj"/> <br>
<jsp:setProperty property="name" name="obj" value="pop"/>
[2] name : <jsp:getProperty property="name" name="obj"/>
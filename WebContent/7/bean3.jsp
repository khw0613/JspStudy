<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.bean.Person"%>
    
 <!-- 빈 객체 생성 -->
 <jsp:useBean id="person" class="com.bean.Person"></jsp:useBean>
 
 <!-- *  사용하면 많은 파라미터를 한번에 받을 수 있다. -->
 <jsp:setProperty property="*" name="person"/>
 
 name : <jsp:getProperty property="name" name="person"/>
 <br>
 age : <jsp:getProperty property="age" name="person"/>
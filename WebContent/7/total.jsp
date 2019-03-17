<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 정적으로 구성이 되므로 서블릿은 총 1개 소모 
	  total.jsp -> servlet 변환될때 해당 요소를 모두 가져와서 한계의
	 서블릿으로 생성
-->
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="contents.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
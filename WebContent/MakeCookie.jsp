<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String getCookie(Cookie[] cookies ,String key){

		//Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies){
			// 저장된 쿠키중에 uid가 존재하면 !!
			if(c.getName().equals(key)){
				return c.getValue();
				//break;
			}
			
		}
		return null;
}
%>
<%
	//쿠키를 생성 : 키, 값
	Cookie cook = new Cookie("uid", "khw111");

	//응답을 통해서 클라이언트 브라우저 전송
	response.addCookie(cook);
	
	// 쿠키 읽기 !!
	out.println(getCookie(request.getCookies(),"uid"));
	
	
	//쿠키 수정
	//쿠키의 키값이 일치하면 덮어쓰기가 된다.
	Cookie c1 = new Cookie("uid","123456789");
	
	//쿠키 기록
	response.addCookie(c1);
	
	//변경된 쿠키값
	out.println("변경값 :" + getCookie(request.getCookies(), "uid"));
%>

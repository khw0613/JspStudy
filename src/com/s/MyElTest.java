package com.s;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "el", description = "EL식을 통한 데이터 전달 및 결과확인", urlPatterns = { "/el" })
public class MyElTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyElTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//0. 10, 100 => 10 + 100 = 110 처리 서블릿(덧셈처리)
		//1. 요청이 들어온다.
		//2. 파라미터 추출
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		//3. 추출된 데이터를 가공하여 데이터를 추가한다.
		int num1_v = Integer.parseInt(num1);
		int num2_v = Integer.parseInt(num2);
		int sum = num1_v + num2_v;
		//4. 최종 결과 화면에 데이터를 실어서 보낸다.
		//page, request, session, application
		request.setAttribute("sum", sum);
		RequestDispatcher dis = request.getRequestDispatcher("7/elResult2.jsp");
		dis.forward(request, response);
		response.getWriter().append("Serverd at : ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//survey_list_pojo list= new survey_list_pojo();
		
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		RequestDispatcher rd=request.getRequestDispatcher("4_a_user.jsp");		
		rd.forward(request, response);
		
	}

}

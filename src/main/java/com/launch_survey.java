package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/launch_survey")
public class launch_survey extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * PrintWriter out=response.getWriter(); response.setContentType("text/html");
		 * RequestDispatcher rd=request.getRequestDispatcher("4_a_user.jsp"); String
		 * survey=request.getParameter("title");
		 * out.println("<h3>"+survey+" is launched succesfully</h3>");
		 * rd.include(request, response);
		 */

		RequestDispatcher rd = request.getRequestDispatcher("5_a_survey_page.jsp");
		rd.forward(request, response);
	}

}

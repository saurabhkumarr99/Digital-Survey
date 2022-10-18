package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//user_pojo user =new user_pojo("name","gender","password");
		
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		RequestDispatcher rd=request.getRequestDispatcher("1_a_home.jsp");
		String name=request.getParameter("name");
		out.println("<h3>");
		out.println("Hello  "+name+"<br>");
		out.println("Registration succesfull ...Please login");
		out.println("<h3>");
		rd.include(request, response);
		
		
	}

}

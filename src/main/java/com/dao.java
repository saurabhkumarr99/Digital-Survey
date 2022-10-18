package com;

import java.sql.Connection;
import java.sql.DriverManager;

public class dao {
 
	static Connection con;
	public static Connection connect() {
		  try {
			     
		    	
		    	Class.forName("com.mysql.jdbc.Driver");
		    	
		    	String url="jdbc:mysql://localhost:3306/survey";
		    	String user="root";
		    	String password="root";  	
		    	con=DriverManager.getConnection(url, user, password);
                 
		    	
		    }catch (Exception e) {
		    	System.out.println(e);
		    }
		return con;
	}
	

}

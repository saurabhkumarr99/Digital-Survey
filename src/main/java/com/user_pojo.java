package com;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class user_pojo {
	private String name;
	private String gender;
	private String password;
	
	public user_pojo(String name, String gender, String password) {
		super();
		this.name = name;
		this.gender = gender;
		this.password = password;
		
		try {

			Connection con=dao.connect();
			Statement st;
			st = con.createStatement();
			String query="INSERT INTO `user`(`Name`, `Gender`,`password`) VALUES ('"+name+"','"+gender+"','"+password+"')";
	    	long i= st.executeUpdate(query);
	    	 st.close();
			   con.close();
			   if (i>0) {
				   System.out.println("Data added succesfully");
				   
			   }else {
				   System.out.println("Data not added ");
			   }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
	}

	
	
	
}

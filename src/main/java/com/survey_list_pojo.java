package com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class survey_list_pojo {
	
	
	public survey_list_pojo() {
		super();
		// TODO Auto-generated constructor stub
		try 
		{

			Connection con=dao.connect();
			
		   Statement	st = con.createStatement();
			String query="SELECT Organisation FROM `survey_page`";
	    	ResultSet rs= st.executeQuery(query);
	    	 
			  while(rs.next()) {
				  String Organisation=rs.getString(1);
				  System.out.println(Organisation);
			  }
			   st.close();
			   con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}

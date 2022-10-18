package com;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class characteristics_pojo {
 
	private String oraganisation;
	private String title;
	private String description;
	private String characterics;
	public characteristics_pojo(String oraganisation, String title, String description, String characterics) {
		super();
		this.oraganisation = oraganisation;
		this.title = title;
		this.description = description;
		this.characterics = characterics;
		
		try {

			Connection con=dao.connect();
			Statement st;
			st = con.createStatement();
			String query="INSERT INTO `survey_page`(`Organisation`, `title`,`description`,`characteristics`) VALUES ('"+oraganisation+"','"+title+"','"+description+"','"+characterics+"')";
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
	
	public characteristics_pojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}

<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String fromlist=request.getParameter("fromlist");
String tolist=request.getParameter("tolist");
float value=Float.parseFloat(request.getParameter("value"));

Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:cl3","root","pratik123"); 


Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery(" Select factor from conversion where froms= '" +fromlist+"' AND tos='" +tolist+"'");
while(rs.next()) 
	{
	 
	 
                  String factor=rs.getString("factor");
		float factor_converted=Float.parseFloat(factor);
		value=value*factor_converted;

		
	    	  out.print("The result is "+value);
	    	  
	    	  out.println("\n");
          
          

	 
	} 
%>


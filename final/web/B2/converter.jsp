<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String fromlist=request.getParameter("fromlist");
String tolist=request.getParameter("tolist");
double value=Double.parseDouble(request.getParameter("value"));

Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/currency","root","root"); 


Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery(" Select factor from conversion where froms= '" +fromlist+"' AND tos='" +tolist+"'");
while(rs.next()) 
	{
	 
	 
                  String factor=rs.getString("factor");
		double factor_converted=Double.parseDouble(factor);
		value=value*factor_converted;

		
	    	  out.print("The result is "+value);
	    	  
	    	  out.println("\n");
          
          

	 
	} 
%>


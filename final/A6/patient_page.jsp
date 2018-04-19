<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String name=request.getParameter("name");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/a6","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from patient where patient_name='"+name+"'");
if(rs.next())
{
String dn=rs.getString("doctor_name"); 
out.println("Doctor's name:"+dn); 

String dates=rs.getString("appt_date"); 
out.println("Date:"+dates); 


String time=rs.getString("appt_time"); 
out.println("Time:"+time); 

}
else
{
response.sendRedirect("patient.jsp");
}


%>

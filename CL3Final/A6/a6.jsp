<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String types=request.getParameter("type");



Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cl3","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select * from hospital where username='"+uname+"' and password='"+pass+"' and type='"+types+"'");
if(rs.next())
{
if(types.equals("patient"))
{
response.sendRedirect("patient_page.html");

}
else if(types.equals("doctor"))
{

ResultSet rs2=st.executeQuery("Select * from hospital where username='"+uname+"' and password='"+pass+"' and type='doctor'");

if(rs2.next())
{

ResultSet rs1=st.executeQuery("Select * from patient where doctor_name='"+uname+"'"); 

out.println("<table border=1>"); 
out.println("<tr>"); 
out.println("<th>Patient Name</th>"); 
out.println("<th>Date</th>"); 
out.println("<th>Time</th>"); 

out.println("</tr>"); 
while(rs1.next()) 
{ 
out.println("<tr>"); 
String pn=rs1.getString("patient_name"); 
out.println("<td>"+pn+"</td>"); 

String dates=rs1.getString("appt_date"); 
out.println("<td>"+dates+"</td>"); 


String days=rs1.getString("appt_time"); 
out.println("<td>"+days+"</td>"); 



out.println("</tr>"); 
} 
out.println("</table>");
}


}

}

else
{
response.sendRedirect("a6.html");

}

%>

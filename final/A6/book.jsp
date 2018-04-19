<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String name=request.getParameter("name");
String dname=request.getParameter("doctor_name");
String date=request.getParameter("date");
String time=request.getParameter("time");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/a6","root","root");
Statement st=con.createStatement();
ResultSet rs1=st.executeQuery("Select * from schedule where doctor_name='"+dname+"' and date='"+date+"' and time='"+time+"' and status='available'");
if(rs1.next())
{
String sql1="insert into patient values('"+name+"','"+dname+"','"+date+"','"+time+"')";
st.executeUpdate(sql1);
out.println("Your appointment");
out.println("<br>");
out.println("Doctor's Name:"+dname);
out.println("<br>");
out.println("Date:"+date);
out.println("<br>");
out.println("Time"+time);

String sql="update schedule set status='booked' where doctor_name='"+dname+"' and date='"+date+"' and time='"+time+"'";
st.executeUpdate(sql);
}
else
{
response.sendRedirect("patient.jsp");
}


%>

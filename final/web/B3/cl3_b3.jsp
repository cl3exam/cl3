<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cl3","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select * from admin where username='"+uname+"' and password='"+pass+"'");
if(rs.next())
{
response.sendRedirect("adminb3.html");
}
else
{
response.sendRedirect("cl3_b3.html");

}

%>

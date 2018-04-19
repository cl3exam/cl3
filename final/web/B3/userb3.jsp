<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String position=request.getParameter("position");
String payment=request.getParameter("payment");
String currency=request.getParameter("currency");
String hotel=request.getParameter("hotel");
String spa=request.getParameter("spa");
int amt=0;
if(spa==null)
{
spa="No";
}
else
{
spa="Yes";
amt+=100;
}
String wifi=request.getParameter("wifi");
if(wifi==null)
{
wifi="No";
}
else
{
wifi="Yes";
amt+=200;
}
String breakfast=request.getParameter("breakfast");
if(breakfast==null)
{
breakfast="No";
}
else
{
breakfast="Yes";
amt+=100;
}
String gym=request.getParameter("gym");
if(gym==null)
{
gym="No";
}
else
{
gym="Yes";
amt+=300;
}
String transport=request.getParameter("transport");
if(transport==null)
{
transport="No";
}
else
{
transport="Yes";
amt+=500;
}

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cl3","root","root");
Statement st=con.createStatement();
String sql="insert into seminar values('"+fname+"','"+lname+"','"+position+"','"+payment+"','"+currency+"','"+hotel+"','"+spa+"','"+breakfast+"','"+gym+"','"+transport+"','"+wifi+"','"+amt+"')";
st.executeUpdate(sql);
out.println("Registered Successfully");
out.println("<br>");
out.println("First Name:"+fname);
out.println("<br>");
out.println("Last Name:"+lname);
out.println("<br>");
out.println("Position:"+position);
out.println("<br>");
out.println("Payment mode:"+payment);
out.println("<br>");
out.println("Currency:"+currency);
out.println("<br>");
out.println("Hotel:"+hotel);
out.println("<br>");
out.println("Fees:"+amt);

%>

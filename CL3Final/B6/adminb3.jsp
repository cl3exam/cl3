<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/b6","root","root123");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(" Select * from seminar");


out.println("<table border=1>");
out.println("<tr>");
out.println("<th>First Name</th>");
out.println("<th>Last Name</th>");
out.println("<th>Position</th>");
out.println("<th>Payment Method</th>");
out.println("<th>Currency</th>");
out.println("<th>Hotel</th>");
out.println("<th>Amount</th>");
out.println("</tr>");
while(rs.next())
{
out.println("<tr>");
String fn=rs.getString("fname");
out.println("<td>"+fn+"</td>");

String ln=rs.getString("lname");
out.println("<td>"+ln+"</td>");


String pos=rs.getString("position");
out.println("<td>"+pos+"</td>");

String pm=rs.getString("payment");
out.println("<td>"+pm+"</td>");

String cu=rs.getString("currency");
out.println("<td>"+cu+"</td>");

String ht=rs.getString("hotel");
out.println("<td>"+ht+"</td>");

String at=rs.getString("amt");
out.println("<td>"+at+"</td>");

out.println("</tr>");
}
out.println("</table>");
%>

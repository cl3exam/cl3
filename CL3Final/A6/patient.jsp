<html>
<head>
<title>Patient Page</title>
</head>
<body>


<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%



Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cl3","root","root");
Statement st=con.createStatement();
ResultSet rs1=st.executeQuery("Select * from schedule");
out.println("<table border=1>"); 
out.println("<tr>"); 
out.println("<th>Doctor</th>"); 
out.println("<th>Date</th>"); 
out.println("<th>Time</th>"); 
out.println("<th>Status</th>"); 

out.println("</tr>"); 
while(rs1.next()) 
{ 
out.println("<tr>"); 
String dn=rs1.getString("doctor_name"); 
out.println("<td>"+dn+"</td>"); 

String dates=rs1.getString("Date"); 
out.println("<td>"+dates+"</td>"); 


String time=rs1.getString("Time"); 
out.println("<td>"+time+"</td>"); 

String sta=rs1.getString("status"); 
out.println("<td>"+sta+"</td>"); 



out.println("</tr>"); 
} 
out.println("</table>");



%>
<br>

<form action="book.jsp" method="post">Book appointment<br>
Name:<input type="text" name="name"/><br>

Doctor's name:
<select name="doctor_name">
    <option value="Dr.Joshi">Dr.Joshi</option>
    <option value="Dr.Pathak">Dr.Pathak</option>
   
  </select><br>

Date in YYYY-MM-DD format:<input type="text" name="date"/><br>

Time:<input type="text" name="time"/><br>


<input type="submit" value="Book appointment"/><br>
</form>
</body>
</html>

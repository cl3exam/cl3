<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%@page import="java.io.File" %>
<%@page import="java.io.Writer" %>

<html>
<a href='start.jsp'>Back</a>
<br>

<%

    String str= "python /home/ts/apache-tomcat-8.5.30/webapps/ROOT/B6/jsp-python/q.py";
   
    Process p = Runtime.getRuntime().exec(str);
    String s = null;
                // using the Runtime exec method:            
    BufferedReader stdInput = new BufferedReader(new
    InputStreamReader(p.getInputStream()));
    BufferedReader stdError = new BufferedReader(new
    InputStreamReader(p.getErrorStream())); 

    while ((s = stdInput.readLine()) != null)
    {
        out.println(s);
    }
                
    while ((s = stdError.readLine()) != null) 
    {
        out.println(s);
    }
             

out.println("<br>");
out.println("<br>");

%>


<%
out.println("<br>");
out.println("<br>");
out.println("<br>");
%>



<%

%>
</html>

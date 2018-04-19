<%@ page import ="java.io.*" %>
<%@page import="java.io.File" %>
<%@page import="java.io.Writer" %>

<%
    out.println("<a href=start.jsp> Back </a>");
    out.println("<br><br><br>");
    String str= "python /usr/apache/apache-tomcat-8.0.33/webapps/ROOT/B4/q.py";
   
    Process p = Runtime.getRuntime().exec(str);
    String s = null;
                // using the Runtime exec method:            
    BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
    BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream())); 

    while ((s = stdInput.readLine()) != null)
    {
        out.println(s);
    }
                
    while ((s = stdError.readLine()) != null) 
    {
        out.println(s);
    }
%>


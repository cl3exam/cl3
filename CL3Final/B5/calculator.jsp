<!DOCTYPE html>
<html>
<head>
	<title>calculator</title>
</head>
<body bgcolor="pink">
<%@page language="java"%>
<%
int num1=Integer.parseInt(request.getParameter("num1"));
int num2=Integer.parseInt(request.getParameter("num2"));
String operation =request.getParameter("r1");

if(operation.equals("Add"))
{
int add=num1+num2;
out.println("sum is :" +add);
}

else if(operation.equals("Sub"))
{
int sub=num1-num2;
out.println("difference is :" +sub);
}

else if(operation.equals("Mul"))
{
int mul=num1*num2;
out.println("product is :" +mul);
}

else if(operation.equals("Div"))
{
int div=num1/num2;
if(num1>=num2)
out.println("quotient is :" +div);
else
out.println("Division cannot be performed");
}
%>
</body>
</html>


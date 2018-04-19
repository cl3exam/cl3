<%@ page import="java.io.*" %>
<%class booth 
{

long multiply(int num1,int num2)
{

long y=0;
long A=0;
long B=num1;
long minus_num2=(~num2+1);

for(int i=0;i<32;i++)
{
 if( (B & 1)==1 && (y==0))
{

A+=minus_num2;
}

if( (B & 1)==0 && (y==1))
{

A+=num2;
}

long t=A & (1<<31);
y=(B & 1);

B=(B >> 1);

long midshift=(A & 1);

B=(B | (midshift<<31));

A= (A >>1 );

A= (A | t);

}
 return B;
}


}
%>
<% 

booth b1=new booth();
int num1=Integer.parseInt(request.getParameter("num1"));
int num2=Integer.parseInt(request.getParameter("num2"));
out.println(b1.multiply(num1,num2));

%>

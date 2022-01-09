<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transfer</title>
</head>
<body>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%@page import="java.sql.*" %>
<%
String ac=request.getParameter("acc");
long acc=Long.parseLong(ac);
String t=request.getParameter("to");
long to=Long.parseLong(t);
String a=request.getParameter("amt");
long amount=Long.parseLong(a);
long bbalance=0;
%>

<%
String qr="select * from customer where accno="+acc;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
rs.first();
 		String name=rs.getString("name");
		
			
	    String email=rs.getString("email");
	  
	    long balance=rs.getLong("balance");

String qr1="select * from customer where accno="+to;

Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery(qr1);
if(rs1.next())
{
	do
	{    rs1.first();
	     bbalance=rs1.getLong("balance");
		if(balance>=amount+1000)
	    {
		String qr2="update customer set balance=? where accno="+acc;
		PreparedStatement ps1=con.prepareStatement(qr2);
		

		ps1.setLong(1,(balance-amount));
		int i=ps1.executeUpdate();
		if(i>0)
		{
			String qr3="update customer set balance=? where accno="+to;
			PreparedStatement ps3=con.prepareStatement(qr3);
			
			
			ps3.setLong(1,(bbalance+amount));
			int j=ps3.executeUpdate();
			
			out.print("Transfer successful");
			String qr4="insert into transaction values (?,?,?)";
			PreparedStatement ps=con.prepareStatement(qr4);
			ps.setLong(1, acc);
			ps.setLong(2,to);
			ps.setLong(3, amount);
			
			int k=ps.executeUpdate();
		}
		else
		{
			out.print("Some error occoured check details or try after some time");
		}
	}
	}while(rs1.next());
}
else
{
	out.println("NO such account found");
}
%>
<br><a href="show.jsp">Customer list</a> <br>
<br><a href="Index.html">Home</a> <br>
<br><a href="list.html">Transaction list</a> <br>

</body>
</html>
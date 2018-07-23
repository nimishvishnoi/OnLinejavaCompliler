<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>

<%@ page import="java.io.*" %>
<%@  page import="java.sql.*"   %>
<%@  page import="java.util.*"   %>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String password=request.getParameter("password");


try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
	
Connection c= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nimi","nimish");
Statement s = c.createStatement();

int  s1=s.executeUpdate("insert into compiler (fname,lname,phone,email,password) values ('"+fname+"','"+lname+"','"+phone+"','"+email+"','"+password+"')");

//out.println(s1);
if(s1==1)
{
out.println("Data inserted");
session.setAttribute("user",email); 
response.sendRedirect("comp.jsp");
}
else
out.println("Failed");	
}
catch(Exception e)
{
	out.println(e);
	}     

%>

</body>
</html>


<html>
<body>
<%@ page import="java.io.*" %>
<%@  page import="java.sql.*"   %>
<%@  page import="java.util.*"   %>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
	
Connection c= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nimi","nimish");
Statement s = c.createStatement();
String  s1="select * from compiler  where   email='"+email+"'  and password='"+password+"'";
//out.println(s1);
ResultSet rs=s.executeQuery(s1);
if(rs.next())
{
out.println("User is Valid");
session.setAttribute("user",email); 
response.sendRedirect("compiler.jsp");
}
else
out.println("User is InValid");
}
catch(Exception e)
{
	out.println(e);
	}     

%>

</body>
</html>


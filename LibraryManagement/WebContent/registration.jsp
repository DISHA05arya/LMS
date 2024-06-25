<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

<%
String username = request.getParameter("name");
String password = request.getParameter("pass");
String confirm_password = request.getParameter("pass1");
String email = request.getParameter("mail");
String gender = request.getParameter("m1");
String contact = request.getParameter("contact");
Connection con;

Class.forName("com.mysql.jdbc.Driver");
 con= DriverManager.getConnection("jdbc:mysql://localhost/emp","root","priya");
 String str = "insert into registration values(?,?,?,?,?,?)";
 PreparedStatement ps = con.prepareStatement(str);
 ps.setString(1, username);
 ps.setString(2,password);
 ps.setString(3,confirm_password);
 ps.setString(4,email);
 ps.setString(5,gender);
 ps.setString(6,contact);

int n= ps.executeUpdate();
if(n>0)
{
	out.println("Hello "+username);
out.println("<h1>Your Registration Completed Successfully</h1>");

}
else
{
	
	out.println(" Not Inserted the Data");
}

ps.close();





%>
<a href ="login.html">Click here for login</a>
</body>
</html>
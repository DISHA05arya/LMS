<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import= "java.sql.*" %>
<%@page import ="javax.sql.*" %>
<title>Login</title>
</head>
<body>


<%

String username = request.getParameter("username");
session.putValue("username",username);
String password = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost/emp","root","priya");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select* from registration where username='"+username+"'");
if(rs.next())
{
if(rs.getString(2).equals(password))
{
out.println("<h2>WELCOME</h2>");
out.println(username);
%>
<%@ include file ="detail.jsp" %>
<%

}
else
{ out.println("invalid user");
%>
<%@ include file ="registration.html" %>
<%

   
}
}
else

%>



</body>
</html>
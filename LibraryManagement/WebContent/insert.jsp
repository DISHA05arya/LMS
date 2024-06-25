<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%!String driverName="com.mysql.jdbc.Driver"; %>
<%!String url="jdbc:mysql://localhost/emp"; %>
<%!String user ="root";%>
<%!String psw="priya"; %>
<%
String sname = request.getParameter("sname");
session.putValue("sname",sname);
String uno = request.getParameter("uno");
String ano = request.getParameter("ano");
String fine = request.getParameter("no");
String idate = request.getParameter("d1");
String rdate = request.getParameter("r1");

if(uno!=null)
{
	java.sql.Connection con = null;
	 java.sql.PreparedStatement ps = null;
	
	try
	{
		Class.forName(driverName);
		con = java.sql.DriverManager.getConnection(url,user,psw);
		String sql ="insert into student values('"+sname+"','"+uno+"','"+ano+"','"+fine+"','"+idate+"','"+rdate+"')";

		ps= con.prepareStatement(sql);
		int i = ps.executeUpdate();
		if(i>0)
		{
			%>
			<%
			
			out.print("<h1>Record Insert Sucessfully</h1>");
			%>
			<% 
		}
		else
		{
		%>
		<% 
			out.println("<h2>There is a probelm in inserting record</h2>");
			out.print("<h2>Check Manually in your Databaase</h2>");
		}%>
		<%
		}
	catch(Exception e)
	{
	request.setAttribute("error",e);
	out.println(e);
	}
	}
	%>
</body>
</html>
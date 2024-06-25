<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
h2
{
color:#99004d;
font-size:200%;
font-family:verdana;
margin-left:120px;
margin-top:210px;
}
td
{
color:#99004d;
font-size:220%;
font-family:verdana;
padding:30px;
margin-left:300px;
}
body
{
background-color:#99ffeb;
background-image:url("a.jpg");
background-repeat:repeat-x;
background-position:top;
background-attachment:fixed;
}
input[type=submit]
{
height:50px;
width:80px;
}
input[type=text]
{
height:30px;
width:300px;
}
</style>

</head>
<body>
<form >

<table align="center">
<th><h2> DELETE STUDENT RECORD</h2></th>
<tr>
<td>University Rollno.</td>
<td><input type="text" name="uno" placeholder="Enter UniversityRollNo."></td>
</tr>
<tr>
<td></td>
<td><input type ="submit" value="delete"></td>
</tr>
</table>

</form>


<%!String driverName="com.mysql.jdbc.Driver"; %>
<%!String url="jdbc:mysql://localhost/emp"; %>
<%!String user ="root";%>
<%!String psw="priya"; %>
<%
String uno = request.getParameter("uno");
if(uno!=null)
{
	java.sql.Connection con = null;
	 java.sql.PreparedStatement ps = null;
	int studentUNO= Integer.parseInt(uno);
	try
	{
		Class.forName(driverName);
		con = java.sql.DriverManager.getConnection(url,user,psw);
		String sql ="delete from student where university_rollno="+uno;
		ps= con.prepareStatement(sql);
		int i = ps.executeUpdate();
		if(i>0)
		{
			%>
			<%
			
			out.print("record Deleted Sucessfully");
			%>
			<% 
		}
		else
		{%>
		<% 
			out.println("there is a probelm in deletiing record");
			out.print("check Manually in your Database");
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
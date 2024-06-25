<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
<style>
body 
{
    background-color:#F7786B;
    background-image: url("p.jpeg");
    background-position:center;
}
input[type=submit]
{
height:50px;
width:120px;
margin-top:50px;
}
h1
{
color:white;
font-family:verdana;
}

th
{
color:white;
font-size:200%;
font-family:verdana;
}
</style>
</head>
<body>

<center><h1> WELCOME TO </h1></center>
<br>

<table align="center">

<th> ABES LIBRARY  </th>
<tr></tr>
<tr></tr>
<tr>
<td>
<form action="insert.html">
<input type="submit" value="INSERT RECORDS" >
</form>
</td>
<td></td>
</tr>
<tr>
<td>
<form action="update.html">
<input type="submit" value="UPDATE RECORDS" >
</form>
</td>
<td></td>
</tr>
<tr>
<td>
<form action="delete.jsp">
<input type="submit" value="DELETE RECORDS">
</form>
</td>
</tr>
</table>

</body>
</html>
<%@page import="hospital.Hospital"%>
<%@page import="hospital.HospitalDBLogic"%>
<%@page import="java.util.Enumeration"%>
<%@page import="service.DBlogic"%>
<%@page import="service.User"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

body{
background-image:url(original.jpg);
background-size:100%;
}
a{
text-decoration:none;
color:black;
}

a:hover{
color:orange;
text-decoration:underline;
}

a:visited{
color:maroon;
}

h1{
text-shadow: 2px 2px teal;
}

.roundable{
border:3px dashed teal;
border-radius:10px;
}

#wrapper{
opacity:0.6;

}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body  >
<%if(session.getAttribute("id")==null)
	{
	response.sendRedirect("login.jsp");

	}%>
<font size="30px" color="white"> 
<h1 align="center" >Welcome Admin  </font> <a href="logoutUser"><img src="logou.png" alt="Lougout" width="70" /></a></h1>
<form action="Search" method="get">

<table class="search" width="200" align="right">
<tr>
<td><input type="text" placeholder="Search.." name="sen" /></td><td><input type="submit" value="search"></td></tr>
</table></form>
<div id="problem" style=" margin:150 auto; color:black;"><h2 align="center"><a href="UserForm.html">Add new hospital </a></h2></div>
<h1 align="center"><font size="15px" > Hospital Details</font></h1>



<div id="wrapper">

<table class="roundable"  bgcolor="darkgrey" background="white"  align="center" width="90%" cellpadding="0" style="font: bold; font-size: x-large;;">
<tr bgcolor="darkgray" style="bold"><td align="center">Name</td><td align="center">Address</td><td align="center">Category</td><td align="center">Speciality</td><td align="center">Location</td><td align="center">Action</td></tr>

<%
int c=0;
Vector<Hospital> data =HospitalDBLogic.getAllHospital();
		Enumeration<Hospital> ex=data.elements();
		while (ex.hasMoreElements()) {
			Hospital h =  ex.nextElement();
			if(c==0)
			{
			c++;	%>
			
			<tr bgcolor="skyblue">
			<%
			}
			else
			{
				c=0;
				%>
				<tr bgcolor="white">
				<%
			}
			%>
			
						<td><%= h.getHospitalname()%></td>
						<td><%= h.getAddress()%></td>
						<td><%= h.getCategory()%></td>
						<td><%= h.getSpeciality()%></td>
						<td><%= h.getLocation()%></td>
						
						<td><a href='updateHospital.jsp?id=<%=h.getId()%>'>Update</a></td>
						<td><a href='DeleteHospital?id=<%=h.getId()%>'>Delete</a></td>
						
			
			</tr>
			
			<%
				
			

		} 
	%>
	</table>

</div>

</body>
</html>
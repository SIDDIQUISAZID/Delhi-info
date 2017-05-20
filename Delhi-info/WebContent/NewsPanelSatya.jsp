<%@page import="java.util.Enumeration"%>
<%@page import="newspanel.NewsLogic"%>
<%@page import="newspanel.News"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%if(session.getAttribute("id")==null)
	{
	response.sendRedirect("services.html");

	}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
<style>
body{
background-image:url(imagesBGQO16TM.jpg);
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

roundable{
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
<body>
<table class="search" width="200" align="right">
<tr>
<td><input type="text" placeholder="Search.."/></td></tr>
</table>
<font size="20px" color="white"> 
<h1 align="center" >  </font> <a href="logoutUser"><img src="logou.png" alt="Lougout" width="70" /></a></h1>

<h1 align="center">News Details</h1>
<div id="wrapper">





<h1 align="center"><a href="NewsFormSatya.html">Add News...</a></h1>

<h2 align="center">New Details</h2>

<table class="roundable"  bgcolor="darkgrey" background="white"  align="center" width="90%" cellpadding="0" style="font: bold; font-size: x-large;;" border="1">
<tr><td>ID</td><td>Title</td><td>Headlines</td><td>Description</td>
<td>Day</td><td>Month</td><td>Time</td><td>ExternalResources</td>
<td>State</td><td>City</td><td>Action</td><td>Action</td></tr>
<% Vector<News> data=NewsLogic.getAllNews();
Enumeration<News> ex=data.elements();
while(ex.hasMoreElements())
{
	News n=ex.nextElement();
	%>
	
	<tr><td><%= n.getId() %></td><td><%= n.getTitle() %></td>
	<td><%= n.getHeadline() %></td>
	<td><%= n.getDes() %></td>
	<td><%= n.getDay() %></td>
	<td><%= n.getMonth() %></td>
	<td><%= n.getTime() %></td>
	<td><%= n.getExtr() %></td>
	<td><%= n.getState() %></td>
	<td><%= n.getCity() %></td>
	<td><a href="UpdateNewsSatya?id=<%=n.getId()%>">Update News</a></td>
	<td><a href="DeleteNewsSatya?id=<%=n.getId()%>">Delete</a></td></tr>
	
	<%
}

%>

</table>
</body>
</html>
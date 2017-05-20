<%@page import="history.User"%>
<%@page import="java.util.Vector"%>
<%@page import="history.DBlogic"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head> <link type="text/css" rel="stylesheet"  href="style.css">
<style type="text/css">




  body {background-color: black}
  h1 {font:15px Arial; color: green; }
  option{color:blue}
  select{color:black}
  input {color:red}
  p { font:15px Arial; color:white; }
   marquee{color:green}

  div.background
{
  background: url(an.jpg) repeat;
  border: 2px solid black;
}
div.transbox
{
  margin: 250px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity:0.6;
  filter:alpha(opacity=60); /* For IE8 and earlier */
}
div.transbox p
{
  margin: 5%;
  font-weight: bold;
  color: #000000;
}
</style>
</head>
<body>
<h1>Historical places</h1>

<div class="background">
<div class="transbox">
<p>Welcome Delhi historical places...</p>

  



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body>



<%!HashSet<String> data=DBlogic.getAllPlaceName(); %>

<%-- System.out.println(data); --%>
<form action="" bgcolor=#ccFDDEE >
<h1><marquee>Select city to search historicalPlaces in delhi</marquee></h1>

<select name="cp" bgcolor=#ccFDDEE>>
<option >Select</option>

<% Iterator<String> d=data.iterator();// no duplicate value allowed used for extracting data
while(d.hasNext())
{
	%>
	<option><%= d.next() %></option>
	
	<%
}

%>
</select>
<input type="submit"><input type=button onClick="location.href='Amit.jsp'" value='Add more historical places'>
</form>
<%if(request.getAttribute("AddUser")!=null)
					{
						out.print("<br>"+request.getAttribute("AddUser"));
					
					out.print("</body></html>");
					if(session.getAttribute("Name")==null)
						response.sendRedirect("/historical.jsp");

				} %>

<% if(request.getParameter("cp")!=null)
	
	
	{
	%>
		<table border="1" bgcolor=#ccFDDEE>
		<tr><td>Name</td><td>Popularity</td><td>location</td><td>place </td><td>aboutPlace </td></tr>
	
	<%
	Vector<User> ed=DBlogic.getAllUser(request.getParameter("cp")); //binding data in vector type to 
	Iterator<User> edd=ed.iterator();
	while(edd.hasNext()){
		User u=edd.next();
		%>
		
				<tr><td><%=u.getPlace() %></td><td><%=u.getPopularity() %></td><td><%=u.getLocation() %></td><td><%=u.getName() %></td><td><%=u.getAboutplace() %></td></tr>
				<td><a href='UpdateAmit.jsp?name="<%=u.getPlace()%>&place="<%= u.getName()%>&Location="<%= u.getLocation()%>&AboutPlace="<%=u.getAboutplace()%>&Popularity="<%=u.getPopularity()%>"'>Update</a>"
					</td></tr>
					
		
		<%
		
	}
	%>
	
	
	</table>
	<%
	}%>
</div>
</div>
</body>
</html>
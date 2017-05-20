<%@page import="java.util.Enumeration"%>
<%@page import="service.User"%>
<%@page import="java.util.Vector"%>
<%@page import="service.DBlogic"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body
{
background-image:url(original.jpg);
background-size:100%;
}



</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%HashSet<String> data1 = DBlogic.getAllPlace(); %>

<h1>Hospital</h1>
<form action="">
<select name="op">

<option> select</option>
<%Iterator<String> d=data1.iterator(); 
while(d.hasNext())
{
%> 
<option><%=d.next() %></option>
<%
}
%>

  
 
</select>
<br>
<input type="submit" value="Search">
</form>

<%if(request.getParameter("op")!=null)
	{
	out.print("<table border='1' id='wrapper'>");
	//	DBlogic.connect();
		Vector<User> data =DBlogic.getAllUser(request.getParameter("op").toString());
		//o.print(data);
		out.print("<h1>Hospital at "+request.getParameter("op")+"</h1");
	out.print("<h1><tr><td><b>Name</b></td><td>Address</td><td>Category</td></tr></h1>");
		Enumeration<User> ex=data.elements();
		while (ex.hasMoreElements()) {
			User user = (User) ex.nextElement();
			
			out.print("<tr><td>"+user.getHospitalname()+"</td><td>"+user.getAddress()+"</td><td>"+user.getCategory()+"</td></tr>");
		}
		out.print("</table>");
	
	}%>

</body>

</html>
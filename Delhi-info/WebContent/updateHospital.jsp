<%@page import="hospital.Hospital"%>
<%@page import="hospital.HospitalDBLogic"%>
<%@page import="java.util.Enumeration"%>
<%@page import="service.DBlogic"%>
<%@page import="service.User"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
background-image:url(medical.jpg);
background-size: 100%;

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
div{
opacity:0.6;
background-color:skyblue;
width:430px;
height:400px;
border:40x dashed teal;
border-radius:20px;
margin:50px auto;
}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body  >
<%Hospital h=HospitalDBLogic.getHospitalr(request.getParameter("id"));%>
<h1 align="center"><marquee><font size="20px" color="papayawhip">Welcome Admin </font></marquee> <a href="test"><img src="logou.png" alt="Lougout" width="70" /></a></h1>
<h2 align="center" color="royalblue"><a href="UserForm.html">Add New Hospital </a></h2>
<div ><h1 align="center"><u>Hospital Previous Details of <%=h.getId()%></u> </h1>
<form action="/City_life/updateHospital" method="get">
<table align="center"  style="font: bold;font-size: x-large;">
<tr><td><b>Name</b></td><td><input  name="n" value="<%=h.getHospitalname() %>"      style="font: bold;font-size: x-large;"></td></tr>
<tr><td><b>category</b></td><td><input  name="c" value="<%=h.getCategory() %>"   style="font: bold;font-size: x-large;"></td></tr>
<tr><td><b>Speciality</b></td><td><input name="s" value="<%=h.getSpeciality() %>" style="font: bold;font-size: x-large;"></td></tr>
<tr><td><b>location</b></td><td><input name="l" value="<%=h.getLocation() %>"  style="font: bold;font-size: x-large;"></td></tr>
<tr><td><b>address</b></td><td><input  name="a" value="<%=h.getAddress() %>"  style="font: bold;font-size: x-large;"></td></tr>
<tr></tr>
<tr><td></td><td><input type="submit" value="Update here" style="font: bold;font-size: x-large;"></td></tr>


</table>
<input type="hidden" name="id" value="<%= h.getId()%>">
</form>
</div>
</body>
</html>
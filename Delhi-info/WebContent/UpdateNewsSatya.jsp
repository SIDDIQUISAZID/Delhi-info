<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>


body{
background-image:url(news.jpg);
background-size:100%;s
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
<table class="search" width="200" align="right">
<tr>
<td><input type="text" placeholder="Search.."/></td></tr>
</table>
<font size="20px" color="white"> 
<h1 align="center" >Welcome Admin  </font> <a href="test"><img src="logou.png" alt="Lougout" width="70" /></a></h1>
<h2 align="center"><a href="NewsForm.html">Add new news </a></h2>
<h1 align="center">news Details</h1>
<div id="wrapper">

<table class="roundable"  bgcolor="darkgrey" background="white"  align="center" width="90%" cellpadding="0" style="font: bold; font-size: x-large;;">
<tr bgcolor="darkgray" style="bold">


</tr>

<h1>enter information</h1>
<form action="/UpdateNews.jsp">
Enter Id:<input type="text"name="user Id"><br>
Enter Title:<input type="text"name="user Title"><br>
Enter Headline:<input type="text"name="user Headline"><br>
Enter Description:<input type="text"name="user Description"><br>
Enter Day:<input type="text"name="user Day"><br>
Enter Month:<input type="text"name="user Month"><br>
Enter Time:<input type="text"name="user Time"><br>
Enter ExternalResources:<input type="text"name="user ExternalResources"><br>
Enter State:<input type="text"name="user State"><br>
Enter City:<input type="text"name="user City"><br>
<input type="submit">








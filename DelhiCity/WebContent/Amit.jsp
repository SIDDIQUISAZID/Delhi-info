<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<head>
<style>
 body {background-color: blue}
  h1 {font:15px Arial; color: green; }
  option{color:blue}
  select{color:black}
  input {color:red}
  p { font:15px Arial; color:white; }
  marquee{color:red}

div.background {
    background: url(bn.jpg) repeat;
    border: 2px solid black;
}

div.transbox {
    margin: 150px;
    background-color: #ffffff;
    border: 1px solid black;
    opacity: 0.6;
    filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
    margin: 5%;
    font-weight: bold;
    color: #000000;
}
</style>
</head>
<body>

<div class="background">
  <div class="transbox">
    <p><marquee>Add new historical places of Delhi.</marquee></p>
  
<style type="text/css">
  body {background-color: Red}
  h1 {color: green; }
  option{color:blue}
  select{color:black}
  input {color:red}


</style> 
<body>
<img src="bn.jpg" alt="delhiplaces" width="300" height="300">
<h1>Enter HistoricalPlaces</h1><!-- Arun.jaspreet.j2ee -->
<form action="AddUser" method="get">
<table>
<tr><td>Enter Name</td><td><input type="text" name="name"></td></tr>

<tr><td>Enter Location</td><td><input type="text" name="L"></td></tr>
<tr><td>Enter Place </td><td><input type="text" name="P"></td></tr>
<tr><td>Enter Popularity</td><td><input type="date" name="Po"></td></tr>
<tr><td>Enter AboutPlace</td><td><input type="text" name="Ab"></td></tr>

<tr><td></td><td><input type="submit"></td></tr>
</table>
</form>


</body>
</html>
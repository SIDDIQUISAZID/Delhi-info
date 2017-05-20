<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 body {background-color: blue}
  h1 {font:15px Arial; color: green; }
  option{color:blue}
  select{color:black}
  input {color:red}
  p { font:15px Arial; color:white; }
   marquee{color:green}

div.background {
    background: url(bn.jpg) repeat;
    border: 2px solid black;
}

div.transbox {
    margin: 220px;
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
    <p>Admin Can Update Historical Data.....</p>
  

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<h1>Name</h1>
<form action='upControl' method='post'>
<h1> Update History ....</h1>
<table >
<tr><td>Name</td><td><input type='text'value='Name' name='Name'></td></tr>
<tr><td>Place</td><td><input type='date' value='place' name='Place'></td></tr>
<tr><td>Popularity</td><td><input type='text' value='Popularity' name='Popularity'></td></tr>
<tr><td>Location</td><td><input type='text' value='Location' name='Location'></td></tr>
<tr><td>AboutPlace</td><td><input type='text' value='AboutPlace' name='AboutPlace'></td></tr>
<tr><td></td><td><input type='submit' value='UPDATE'></td></tr>

		</table>
				<input type='hidden' value='Name' name='Name'>
				
	</form>


</div>
</div>

</body>
</html>
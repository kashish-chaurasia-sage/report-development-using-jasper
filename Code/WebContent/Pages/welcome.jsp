<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<%
 
String bgColor = "#708090";
String myColor = request.getParameter("color");
 
if (myColor != null){
myColor = myColor;
}
else{
myColor = bgColor;
}
 
%>
<body BGCOLOR="<%= myColor %>">
<img  src="m1.jpg" width="1300" height="350"/>
<center><h1><p style="color:#F5DEB3">MOTOROLA INDIA</p></h1></center>
<h2><p style="color:#F0E68C">Welcome, <%=session.getAttribute("name")%></p> </h2>
 
<h3><p style="color:orange">About Us</p></h3>
<p style="color:white">Motorola created the mobile communications industry.For the past 80 years, our engineers have thrived on invention; on finding new ways to solve problems. 
Today we continue to look for new opportunities to change people's lives for the better through the magic of mobility. </p>
<p style="color:white">We, Moto provides various services across the whole world such as:
<ul style="color:white">
 <li>Product Type</li>
 <ul>
  <li>Mobile</li>
  <li>earphone/headphones</li>
  <li>powerbanks</li>
  <li>mobile cases and covers</li>
  <li>charger</li>
  <li>other Accessories</li>
 </ul>
 </ul>
 <ul style="color:white">
 <li>Order Method type</li>
 <ul>
 <li>telephonic</li>
 <li>email</li>
 <li>online transactions</li>
  <li>cod</li> 
 </ul>
</ul>
<p style="color:#ADD8E6">To find our Retailer Shops with the Profit statements across the India with the working year Click on Report Generation</p>
<td><p><a style="color:white"  href="http://localhost:8089/SpringJasper/loadJasper.do">Report Generation</a> </p> </td>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.error {
	color: "sales1.jpg";
	
}
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home</title>
	</style>
</head>
 <% 
 
String bgColor = "#1F618D";
String myColor = request.getParameter("color");
 
if (myColor != null){
myColor = myColor;
}
else{
myColor = bgColor;
}
 
%>
<body background="sales1.jpg"">
<%
		Connection con= null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3307/capstone";
		String user = "root";
		String password = "12345";

	String sql = "select usertype from userdetail";

	try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, password);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery(); 
%>
	<form method="post" action="login.jsp">
		<center><h2 style="color:white">Please Login</h2></center>
		<table border="1" align="center">
	<tr>
	<td style="color:white">Enter Your Name :</td>
		<td style="color:white"><input type="text" name="name"/></td>
	</tr>
	<tr>
		<td style="color:white">Enter Your Password :</td>
		<td style="color:white"><input type="password" name="password"/></td>
	</tr>
	<tr>
	<td style="color:white">Select UserType</td>
		<td style="color:white"><select name="usertype">
		<option value="select">select</option>
	<%
		while(rs.next())
		{
			String usertype = rs.getString("usertype");
	%>
	<option value=<%=usertype%>><%=usertype%></option>
	<% 
		}
	}
	catch(SQLException sqe)
	{
		out.println("home"+sqe);
	}
	%>
</select>
</td>
</tr>
<tr>
<td style="color:white"></td>
<td style="color:white"><input type="submit" value="submit"/></td>
</table>
</form>
</body>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
.error {
	color: #ff0000;
	
}
 <meta charset="ISO-8859-1">
<title >Sales Data</title>

</style>
</head>

 <body 
 
 background="sales1.jpg"> 
	<h1 ><font color="white"><center>Motorola Mobiles Sales Dashboard</center></h1>
		<center>
	<h3>Generate Report for retail shops associated with Motorola Products </h3>
 
	<form:form method="POST" action="generateReport.do" commandName="jasperInputForm">
		
		<table id="reptbl" width="250px" border="1">
		<tr>
		<td colspan="2"><form:errors path="noofYears" cssClass="error"/></td> </tr>
  		<tr>
  			<td>
  			    Enter Number of Years <form:input path="noofYears" id="noofYears"/>
    			<input type="submit"  value="Generate Retailer Shop List"  />
 			</td> 
 			<td>
 				<form:radiobuttons path="rptFmt" items="${jasperRptFormats}"/>
 			</td>
 
		</tr>
		
		
 
         </table> 
        
	</center>	
		
	
	</form:form>
		
	<form:form method="POST" action="http://localhost:8089/SpringJasper/Pages/prepared_statement_query.jsp">
		<center>
			 <td>
	<br><br><input type="submit" location.href="/Pages/prepared_statement_query.jsp"  value="Add Data"  />
	</td> 
	
	
		</center>
 
	</form:form>
	
</body>
</html>
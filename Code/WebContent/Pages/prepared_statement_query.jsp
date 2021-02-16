 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<HTML>
<HEAD>
    <TITLE>Inserting Data </TITLE>
</HEAD>

<BODY bgcolor="#ffffcc">
  <font size="+3" color="green"><br>Insert Data into Motorola DB</font>
  <FORM action="prepared_statement_query.jsp" method="get">
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
    
      <TR>
	      <TH width="50%">City</TH>
		  <TD width="50%"><INPUT TYPE="text" NAME="emp_code"></TD>
	  </tr>
      <TR>
	     <TH width="50%">Retailer Shop</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="EmpName"></TD>
	  </tr>
	  <TR>
	     <TH width="50%">Profit</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="Salary"></TD>
	  </tr>
          <TR>
	     <TH width="50%">Date of Joining</TH>
		 <TD width="50%"><INPUT TYPE="date" NAME="Doj"></TD>
	  </tr>
	  
	  <TR>
	      <TH></TH>
		  <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
	  </tr>
   </TABLE>
<%
   String emp_code = request.getParameter("emp_code");
   String EmpName = request.getParameter("EmpName");
   String Salary = request.getParameter("Salary");
   String Doj = request.getParameter("Doj");


   /* Create string of connection url within specified format with machine name, 
    port number and database name. Here machine name id localhost and database name is student. */
    String connectionURL = "jdbc:mysql://localhost:3307/jasperdb";

    // declare a connection by using Connection interface 
    Connection connection = null;

    // declare object of Statement interface that uses for executing sql statements.
     PreparedStatement pstatement = null;

	// Load JBBC driver "com.mysql.jdbc.Driver"
     Class.forName("com.mysql.jdbc.Driver").newInstance();

     int updateQuery = 0;
     
	 // check if the text box is empty
	 if(emp_code!=null && EmpName!=null && Salary!=null && Doj!=null){

		 // check if the text box having only blank spaces
	     if(emp_code!="" && EmpName!="" && Salary!="" && Doj!="") {

            try {
              /* Create a connection by using getConnection() method that takes 
			  parameters of string type connection url, user name and password to connect 
			  to database. */
              connection = DriverManager.getConnection(connectionURL, "root", "12345");

              // sql query to insert values in the secified table.
              String queryString = "INSERT INTO emp_master(emp_code, EmpName, Salary, Doj) VALUES (?, ?, ?, ?)";

			 /* createStatement() is used for create statement object that is used for 
			   sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
              pstatement.setString(1, emp_code);
			  pstatement.setString(2, EmpName);
			  pstatement.setString(3, Salary);
                          pstatement.setString(4, Doj);
              updateQuery = pstatement.executeUpdate();

              if (updateQuery != 0) { %>
			    <br>
			    <TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
			        <tr><th>Data is inserted successfully in database.</th></tr>
				</table>
			 
<%
              }
             
              
            } 
            catch (Exception ex) {
            out.println("Unable to connect to database.");
   
            }
           
            
            
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
	     }
	     else
	     {
	   	  out.println("Enter the data.");
	     }
	   }
	 
%>
  </FORM>
 </body> 
</html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="com.example.util.DBUtil" %>

<% 
/* Create string of connection url within specified format with machine name, port number and database name. Here machine name id localhost and database name is usermaster. */ 
String connectionURL = "jdbc:mysql://localhost:3306/mobiles"; 

// declare a connection by using Connection interface 
Connection connection; 


// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database. */ 
connection = DriverManager.getConnection(connectionURL, "root", "");
String uname=request.getParameter("spec_name");
Statement stmt=connection.createStatement();
out.println(""+uname+"<br>");
String query="select * from mobiles where Model_Name = '"+uname+"'";
ResultSet rs=stmt.executeQuery(query);
// check weather connection is established or not by isClosed() method 
try{
		out.println("Successfully connected to " + "MySQL server using TCP/IP...");
}
catch(Exception ex){
out.println("Unable to connect to database.");
}
%>
<html>
	<head>
	<table border="1">
<%
if(rs.getString("Model_Name")==(uname))
{
%>

    <tr colspan="2">
    	<tr>
    	<td>ID</td>
	    	<td><%out.println(rs.getInt("id")); %></td>
	    </tr>
	    <tr>
	    	<td>Brand Name</td>
	    	<td><%out.println(rs.getString("Brand_Name")); %></td>
	    </tr>
	    <tr>
	    	<td>Model Name</td>
	    	<td><%out.println(rs.getString("Model_Name")); %></td>
	    </tr>
	    <tr>
	    	<td>Network Type
			<td><%out.println(rs.getString("Network_Type")); %></td>
		</tr>
		<tr>
			<td>Release Date</td>
			<td><%out.println(rs.getString("Release_Date")); %></td>
		</tr>
		<tr>
			<td>Display</td>
			<td><%out.println(rs.getString("Display")); %></td>
		</tr>
		<tr>
			<td>Body</td>
			<td><%out.println(rs.getString("Body")); %></td>
		</tr>
		<tr>
			<td>OS</td>
			<td><%out.println(rs.getString("OS")); %></td>
		</tr>
		<tr>
			<td>CPU</td>
			<td><%out.println(rs.getString("CPU")); %></td>
		</tr>
		<tr>
			<td>GPU</td>
			<td><%out.println(rs.getString("GPU")); %></td>
		</tr>
		<tr>
			<td>External Memory</td>
			<td><%out.println(rs.getString("External_Memory")); %></td>
		</tr>
		<tr>
			<td>ROM</td>
			<td><%out.println(rs.getString("ROM")); %></td>
		<tr>
			<td>Primary Camera</td>
			<td><%out.println(rs.getString("Primary_Camera")); %></td>
		</tr>
		<tr>
			<td>Secondary Camera</td>
			<td><%out.println(rs.getString("Secondary_Camera")); %></td>
		</tr>
		<tr>
			<td>RAM</td>
			<td><%out.println(rs.getString("RAM")); %></td>
		</tr>
		<tr>
			<td>Battery</td>
			<td><%out.println(rs.getString("Battery")); %></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><%out.println(rs.getString("Price")); %></td>
		</tr>
	</tr>
	
<%
}
connection.close();
%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %> 
<% 
/* Create string of connection url within specified format with machine name, port number and database name. Here machine name id localhost and database name is usermaster. */ 
String connectionURL = "jdbc:mysql://localhost:3306/test"; 

// declare a connection by using Connection interface 
Connection connection; 
String fname,lname,email,uname,pwd;

// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database. */ 
connection = DriverManager.getConnection(connectionURL, "root", "");
fname=request.getParameter("first_name");
lname=request.getParameter("last_name");
email = request.getParameter("email");
uname= request.getParameter("user");
pwd = request.getParameter("password");

Statement stmt=connection.createStatement();
String query = "Insert into employee values("+fname+","+lname+","+email+","+uname+","+pwd+");";
ResultSet rs = stmt.executeQuery(query);
%>
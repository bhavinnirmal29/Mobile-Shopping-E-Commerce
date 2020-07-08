<html>
<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>


<%@page import="java.sql.Connection" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<table style="width:100%">
<tr>
<td>ID</td>
<td>Brand_Name</td>
<td>Model_Name</td>
<td>Network_Type</td>
<td>Release_Date</td>
<td>Display</td>
<td>Body</td>
<td>OS</td>
<td>CPU</td>
<td>GPU</td>
<td>External_MEmory</td>
<td>ROM</td>
<td>Primary_Camera</td>
<td>Secondary_Camera</td>
<td>RAM</td>
<td>BAttery</td>
<td>Price</td>


<%
// String uname=request.getParameter("model_name");
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/mobiles";
String username="root";
String password="";
String uname = "Iphone5s";
out.println("UNAME = "+uname);
String query="select * from mobiles where Model_Name = "+"'"+uname+"'";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
out.println("Database Connected");
while(rs.next())
{

%>
    <tr><td><%out.println(rs.getInt("id")); %></td></tr>
    <tr><td><%out.println(rs.getString("Brand_Name")); %></td></tr>
    <tr><td><%out.println(rs.getString("Model_Name")); %></td></tr>
	<tr><td><%out.println(rs.getString("Network_Type")); %></td></tr>
	
	<tr><td><%out.println(rs.getString("Release_Date")); %></td></tr>
	<tr><td><%out.println(rs.getString("Display")); %></td></tr>
	<tr><td><%out.println(rs.getString("Body")); %></td></tr>
	<tr><td><%out.println(rs.getString("OS")); %></td></tr>
	<tr><td><%out.println(rs.getString("CPU")); %></td></tr>
	<tr><td><%out.println(rs.getString("GPU")); %></td></tr>
	<tr><td><%out.println(rs.getString("External_Memory")); %></td></tr>
	<tr><td><%out.println(rs.getString("ROM")); %></td></tr>
	<tr><td><%out.println(rs.getString("Primary_Camera")); %></td></tr>
	<tr><td><%out.println(rs.getString("Secondary_Camera")); %></td></tr>
	<tr><td><%out.println(rs.getString("RAM")); %></td></tr>
	<tr><td><%out.println(rs.getString("Battery")); %></td></tr>
	<tr><td><%out.println(rs.getString("Price")); %></td></tr>

	
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
}
%>

</html>
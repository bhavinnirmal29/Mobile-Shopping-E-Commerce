<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.util.DBUtil"%>

<%
	String userName = request.getParameter("username");
	out.println("Username = "+userName);
	String password = request.getParameter("password");
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from EMPLOYEE where USER_NAME='"
			+ userName + "' and PASSWORD='" + password + "'");
	if (rs.next()) {
		out.println ("Welcome " + userName +" <a href='logout.jsp'>Log out</a>");
	} else {
		out.println("Invalid password <a href='index.jsp'>try again</a>");
	}
%>
<%@ include file="navbar.jsp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.example.util.DBUtil"%>
<%@ page import="java.io.*,java.util.*" %>

<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");

      //title = "Welcome to my website";
      session.setAttribute("user", userName);
      session.setAttribute("pass",  password);
  
	Connection con = DBUtil.getMySqlConnection();
	PreparedStatement st; 
	String sql="select * from customer where Name=? and password=?";
	st = con.prepareStatement(sql);
	st.setString(1,userName);
	st.setString(2,password);
	ResultSet rs;
	rs = st.executeQuery();
	if (rs.next()) {%>
		int id=rs.getInt(ID);
		session.setAttribute("ID",id);
		<jsp:forward page="index.jsps"></jsp:forward>
		<%
	} else {
		out.println("Invalid password <a href='index.jsp'>try again</a>");
	}

%>
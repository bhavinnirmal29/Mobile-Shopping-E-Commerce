<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.User" %>
<%@ page import="beans.Order" %>
<%
  String name = "User";
  User u_;
%>
<%
    User u = new User("Teste");
    if(session.getAttribute("user") != null) u = (User)session.getAttribute("user");

    String order;
    if(request.getParameter("remove") != null) {
        order = request.getParameter("remove");
        u.removeOrder(order);
        session.setAttribute("user", u);
    }
%>

<html>
	<head>
    	<title>My Profile</title>
		<!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <link type="text/css" rel="stylesheet" href="css/style.css" media="screen,projection" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>	
		<style>
			
		</style>
  	</head>
  	<body>
	  	<div class="row navbar-fixed">
        <nav class="transparent">
            <div class="nav-wrapper">
                <a href="index.html" class="brand-logo black-text center-left"><span class="blue-text lighten-2">T</span>he <span class="blue-text lighten-2">M</span>obile <span class="blue-text lighten-2">S</span>hop</a>
              
              <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons black-text">menu</i></a>
              <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a class="navlink" href="index.jsp">Home</a></li>
                  <li><a href="AboutUs.jsp" class="navlink">About Us</a></li>
                  <li><a href="ContactUs.jsp" class="navlink">Contact Us</a></li>
                  <li>
                    <%
                       if(request.getParameter("uname") != null){
                          name = request.getParameter("uname");
                          u_ = new User(name);
                          session.setAttribute("user", u);
                        }

                        if(session.getAttribute("user") != null) {
                          u_ = (User)session.getAttribute("user");
                    %>
                    <a href="info.jsp" class="navlink">Hi, <%= u_.getUserID() %></a>
                    <%
                      }else {
                     %>
                        <a href="#LoginModal" class="waves-effect waves-light btn">Login</a>
                    <%
                      }
                    %>
                  <!-- <a href="#LoginModal" class="side_nav">Login</a> -->
                  </li>

              </ul>
              <ul class="side-nav" id="mobile-demo">
                  <li><a href="index.html" class="left-align">The Mobile Shop</a></li>
                  <hr>
                  <li><a href="index.jsp" class="side_nav">Home</a></li>
                  <li><a href="AboutUs.jsp" class="side_nav">About Us</a></li>
                  <li><a href="ContactUs.jsp" class="side_nav">Contact Us</a></li>
                  <li>
                    <%
                        if(request.getParameter("uname") != null){
                          name = request.getParameter("uname");
                          u_ = new User(name);
                          session.setAttribute("user", u);
                        }

                        if(session.getAttribute("user") != null) {
                          u_ = (User)session.getAttribute("user");
                    %>
                    <a href="Info.jsp" class="navlink">Hi, <%= u_.getUserID() %></a>
                    <%
                      }else {
                     %>
                    <a href="#LoginModal" class="waves-effect waves-light btn">Login</a>
                    <%
                      }
                    %>
                  </li>
              </ul>
            </div>
        </nav>
      </div>
      <h1 align="center">Your Orders</h1>
            <%
                ArrayList<Order> orders = u.getOrders();
                if(orders.isEmpty()){
            %>
            <h3> No orders made yet! </h3>
            <%
                } else {
            %>
            <form action="info.jsp">
            <%
                for(Order o : orders){
            %>
                
                <p><%= o.showOrder() %><br>Remove: <input class="waves-effect waves-light" type="submit" name="remove" value="<%= o.getConf() %>"></p>
                <br>
                <br>
            <%
                }
            %>
            </form>
            <%
              }
            %>
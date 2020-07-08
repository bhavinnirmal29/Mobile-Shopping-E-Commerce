<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.User" %>
<%
  String name = "User";
  User u;
%>
<html>
	<head>
    	<title>About Us </title>
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
    	<!-- FONTS -->     
	  	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    	<!--Materialized CSS -->
	  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    	<!-- External CSS -->
    	<link rel="stylesheet" type="text/css" href="css/style.css">	
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
                          u = new User(name);
                          session.setAttribute("user", u);
                        }

                        if(session.getAttribute("user") != null) {
                          u = (User)session.getAttribute("user");
                    %>
                    <a href="Info.jsp" class="navlink">Hi, <%= u.getUserID() %></a>
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
	                        if(session.getAttribute("user") != null) {
	                        %>
	                        <a href="info.jsp" class="navlink">Hi, <%= u.getUserID() %></a>
	                        <%
	                            }else {
	                        %>

	                        <a href="#LoginModal" class="navlink">Login</a>
	                        <%
	                            }
	                        %>
	                  <!-- <a href="#LoginModal" class="side_nav">Login</a> -->
	                  </li>
	              </ul>
	            </div>
	        </nav>
      	</div>
	</body>
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script> 
    <script>
    
    	$(document).ready(function(){
          $(".button-collapse").sideNav();
        });
	
  		$(document).ready(function() {
    		Materialize.updateTextFields();
  		});
    </script>
</html>
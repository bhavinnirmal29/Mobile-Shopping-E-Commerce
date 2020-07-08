<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.Cart" %>
<%@ page import="beans.User" %>
<%
  String name = "User";
  User u;
%>
<%
    Cart c = new Cart();
    if(session.getAttribute("cart") != null){
    	c = (Cart)session.getAttribute("cart");
 	}
%>
<html>
	<head>
    	<title>CheckOut</title>
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
                    <a href="info.jsp" class="navlink">Hi, <%= u.getUserID() %></a>
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
                          u = new User(name);
                          session.setAttribute("user", u);
                        }

                        if(session.getAttribute("user") != null) {
                          u = (User)session.getAttribute("user");
                    %>
                    <a href="info.jsp" class="navlink">Hi, <%= u.getUserID() %></a>
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
            </div>
        </nav>
      </div>
			<form id="signupForm" class="Col s12" method="POST" action="Order.jsp">
				<div class="card grey lighten-2 center-align hoverable">
					<div class="row">
						<div class="card-title">
						<h2>
							CheckOut Form
						</h2>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">account_circle</i>
			          		<input type="text" name="fname" class="validate">
			          		<label for="fname">First Name</label>
						</div>
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">account_circle</i>
			          		<input id="l_name" type="text" name="lname" class="validate">
			          		<label for="l_name">Last Name</label>
			        	</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">home</i>
			          		<input id="_Add" type="text" name="address" class="validate">
			          		<label for="_Add">Address</label>
						</div>
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">info</i>
			          		<input id="city" type="text" name="city">
			          		<label for="city">City</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">mode_edit</i>
			          		<input id="state" type="text" name="state" class="validate">
			          		<label for="state">State</label>
						</div>
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">list_number</i>
			          		<input name="zip_code" type="number" name="_zipcode" class="validate" data-length="6">
			          		<label for="zip_code">ZipCode</label>
			        	</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">short_text</i>
			          		<input id="country" type="text" name="country_" class="validate">
			          		<label for="country">Country</label>
						</div>
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">message</i>
			          		<input name="name_print" type="text" name="_name_print" class="validate">
			          		<label for="name_print">Name Printed</label>
			        	</div>
					</div>
					<div class="row">
						<div class="input-field col s6 m8 l12">
			          		<i class="material-icons prefix blue-text">payment</i>
			          		<input name="cc_details" type="number" name="_credi_card" data-length="16" class="validate">
			          		<label for="cc_details">Credit Card Details</label>
			        	</div>
			        </div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">today</i>
			          		<input id="expiration_date" type="number" name="exp_date" class="validate">
			          		<label for="expiration_date">Expiration Date</label>
						</div>
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix blue-text">fiber_pin</i>
			          		<input name="cvv_" type="number" name="cvv" class="validate" data-length="3" />
			          		<label for="cvv_">CVV</label>
			        	</div>
					</div>
					<div class="row">
						<div class="col s12 m6 l12">
							<button type="submit" class="waves-effect waves-light btn blue" value="submit">Confirm
						</div>
					</div>

				</div>
			</form>


	</body>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      	<script type="text/javascript" src="js/materialize.min.js"></script>
      	<script>
	    $(document).ready(function(){
	        $(".button-collapse").sideNav();
	        $('.tapTarget').tapTarget('open');
	        $('.tapTarget').tapTarget('close');
        });

	    $(document).ready(function(){
	        $(".modal").modal();
	    });
	  
	    $(document).ready(function() {
		    $('input#_credi_card,input#cvv,input#_zipcode').characterCounter();
	    });

	    $(document).ready(function() {
	        Materialize.updateTextFields();
	    });

	    $(document).ready(function(){
	        $('.slider').slider();
	    });

        $(document).ready(function(){
            $('.tooltipped').tooltip({delay: 50});
        });
    </script>
</html>
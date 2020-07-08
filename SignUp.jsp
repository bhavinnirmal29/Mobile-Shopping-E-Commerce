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
    	<title>SignUp</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
    	<!-- FONTS -->     
	  	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    	<!--Materialized CSS -->
	  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    	<!-- External CSS -->
    	<link rel="stylesheet" type="text/css" href="css/style.css">	
		<style>
			.errorMessage {
	     		font-size: 18px;
			}
			.errorMessage i,
			.errorMessage [class^="mdi-"], .breadcrumb [class*="mdi-"],
			.errorMessage i.material-icons {
			    display: inline-block;
			    float: left;
			    font-size: 24px;
			}
			.errorMessage:before {
			    color: rgba(255, 255, 255, 0.7);
			    vertical-align: top;
			    display: inline-block;
			    font-family: 'Material Icons';
			    font-weight: normal;
			    font-style: normal;
			    font-size: 25px;
			    margin: 0 10px 0 8px;
			    -webkit-font-smoothing: antialiased;
			}
			.errorMessage:first-child:before {
			    display: none;
			}


			.invalid {
				color: red;
				font-size: 1em;
			}


			.cardpadding
			{
				margin-top:20px;
				margin-left:20px;
				margin-bottom:10px;
				margin-right:20px;
			}
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
	  	<div class="row center-align">
			<form id="signupForm" class="Col s12" method="POST" action="#">
				<div class="card grey lighten-2 center-align hoverable ">
					<div class="row">
						<div class="card-title">
						<h2>
							Sign Up
						</h2>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix">account_circle</i>
			          		<input type="text" name="fname" class="validate">
			          		<label for="fname">First Name</label>
						</div>
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix">account_circle</i>
			          		<input id="icon_prefix1" type="text" name="lname" class="validate">
			          		<label for="icon_prefix1">Last Name</label>
			        	</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix">phone</i>
			          		<input id="phone" type="tel" name="mobile" class="validate">
			          		<label for="phone">Phone</label>
						</div>
						<div class="input-field col s12 m8 l6">
							<br>
							<p>
						    	<input name="gender" type="radio" id="male" />
						      	<label for="male">Male</label>
						      	<br>			
						      	<input name="gender" type="radio" id="female" />
						      	<label for="female">Female</label>
						    </p>
						    <label for="gender">Gender</label>
			        	</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix">email</i>
			          		<input id="email" type="email" name="em1" class="validate">
			          		<label for="email">Email</label>
						</div>
						<div class="input-field col s12 m8 l6">
			          		<i class="material-icons prefix">fingerprint</i>
			          		<input name="pwd" type="password" class="validate">
			          		<label for="pwd">Password</label>
			        	</div>
					</div>
					<div class="row">
						<div class="col s12 m6 l12">
							<button href="#" type="submit" class="waves-effect waves-light btn blue" value="submit">Submit

							</button>
							<h5>Already Have An Account ?<a href="#LoginModal" class="pink-text">Login</a> </h5>
						</div>
					</div>
				</div>
			</form>
		</div>

		<!-- Login Modal -->
		<div id="LoginModal" class="modal">
          <div class="modal-content">
            <h4 class="center-align"><span class="blue-text lighten-2">L</span>ogin
            <a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
            <hr>
            <div class="row">
              <form action="Login.jsp" method="POST">
                <div class="row">
                  <div class="input-field col s6 m8 l12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="username" data-length="15" name="uname" type="text" class="validate">
                    <label for="username">Username</label>
                  </div>
                </div>
                <div class="row">
                  <div class="input-field col s6 m8 l12">
                    <i class="material-icons prefix">fingerprint</i>
                    <input id="password" name="pwd" type="text" class="validate">
                    <label for="password">Password</label>
                  </div>
                </div>
                <div class="row">
                  <h6 class="center-align"><input type="submit" value = "Login" class="waves-effect waves-light btn blue lighten-2" /></h6>
                </div>
                <div class="row">
                  <h5 class="center-align">Don't Have An Account? <a href="SignUp.html" >SignUp</a></h5>
                </div>
              </form>
            </div> 
          </div>
          <div class="modal-footer">
          </div>
        </div>
	</body>
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    <script>
    	$(document).ready(function(){
        $(".modal").modal();
    	  });
    
    	$(document).ready(function(){
          $(".button-collapse").sideNav();
        });
	
  		$(document).ready(function() {
    		Materialize.updateTextFields();
  		});
    </script>
</html>
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
    	<title>Apple Phones </title>
		<!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <link type="text/css" rel="stylesheet" href="css/style.css" media="screen,projection" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="Click Here For Moreport" content="width=device-width, initial-scale=1.0"/>	
		<style>
			
		</style>
  	</head>
  	<body>
	  	<div class="row navbar-fixed">
        <nav id="nav_color" class="transparent">
            <div class="nav-wrapper">
                <a href="index.html" class="brand-logo black-text center-left"><span class="blue-text lighten-2">T</span>he <span class="blue-text lighten-2">M</span>obile <span class="blue-text lighten-2">S</span>hop</a>
              
              <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons black-text">menu</i></a>
              <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a class="navlink" href="index.jsp">Home</a></li>
                  <li><a href="AboutUs.jsp" class="navlink">About Us</a></li>
                  <li><a href="ContactUs.jsp" class="navlink">Contact Us</a></li>
                  <li>
                    <%
                        if(session.getAttribute("user") != null) {
                          u = (User)session.getAttribute("user");
                    %>
                    <a href="" class="dropdown-button navlink" data-activates="dropdown1">Hi, <%= u.getUserID() %></a>
                    <ul class="dropdown-content" id="dropdown1">
                      <li><a href="#Logout">Logout</a></li>
                      <li><a href="Info.jsp"></a></li>
                    </ul>
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
                            u = (User)session.getAttribute("user");
                        %>
                    <a href="" class="dropdown-button navlink" data-activates="dropdown1">Hi, <%= u.getUserID() %></a>
                    <ul class="dropdown-content" id="dropdown1">
                      <li><a href="#Logout">Logout</a></li>
                      <li><a href="Info.jsp"></a></li>
                    </ul>
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
	  	<div class="row back_color marginReduce center-align">
	  		<div class="col s12 m12 l12">
	  			<div class="card-panel grey lighten-2 blue-text lighten-2 hoverable blue-text">
	  				<h4>Apple Collection</h4>
	  			</div>
	  		</div>
	  	</div>
	  	<!-- Row 1-->
	  	<div class="row card_padding back_color marginReduce">
  	  		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/apple/iphone5c/iPhone-5C-Blue-front.png">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Apple Iphone 5C</span>
          			</div>
          			<div class="card-action">
            			<a href="#appleiphone5c" class="waves-effect waves-light btn modalmodal-close white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/apple/iphone5s/5s_silver_front.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Apple Iphone 5S</span>
          			</div>
          			<div class="card-action">
            			<a href="#appleiphone5s" class="waves-effect waves-light btn white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/apple/iphone5se/5se.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Apple Iphone SE</span>
          			</div>
          			<div class="card-action">
            			<a href="#appleiphone5se" class="waves-effect waves-light btn white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      	</div>
      	<div class="row">
      		<div class="col s12 m8 l6">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/apple/iphone6/iphonesilver6.jpeg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Apple Iphone 6</span>
          			</div>
          			<div class="card-action">
            			<a href="#appleiphone6_" class="waves-effect waves-light btn white-text ">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      		<div class="col s12 m8 l6">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img src="images/apple/iphone6plus/iPhone_6_PLUSgoldback.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Apple Iphone 6 PLUS</span>
          			</div>
          			<div class="card-action">
            			<a href="#appleiphone6PLUS" class="waves-effect waves-light btn white-text tooltipped" data-position="bottom" data-delay="50" data-tooltip="View Details">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      	</div>

<!-- 	  	<div class="row">
		  	<div class="card">
	    		<div class="card-image waves-effect waves-block waves-light">
	      			<img class="activator" src="images/office.jpg">
	    		</div>
	    		<div class="card-content">
	      			<span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
	      			<p><a href="#">This is a link</a></p>
	    		</div>
	    		<div class="card-reveal">
	      			<span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
	      			<p>Here is some more information about this product that is only revealed once clicked on.</p>
	    		</div>
	  		</div>
	  	</div>
 -->	  <!-- 	<a class="waves-effect waves-light btn" href="#appleiphone5c">Modal</a> -->

		<!-- Modal Structure -->
	    <div id="appleiphone5c" class="modal">
	  		<div class="modal-content">
		      	<h4>Apple Iphone 5C<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
		      	<img src="images/apple/iphone5c/iPhone-5C-Blue-front.png" class="modalPopup responsive-img">
		    </div>
		    <div class="modal-footer">
          <form action="Cart.jsp" method="POST">
		    	   <button type="submit" name="product" value="Iphone5C" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
		    	<a href="#specifications" class="waves-effect waves-green btn-flat right">Specifications</a>
		    </div>
		</div> 
		<div id="appleiphone5s" class="modal">
	  		<div class="modal-content">
		      	<h4>Apple Iphone 5S<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
		      	<img src="images/apple/iphone5s/5ssilverboth.jpeg" class="modalPopup responsive-img">
		    </div>
		    <div class="modal-footer">
		    	 <form action="Cart.jsp" method="POST">
            <button type="submit" name="product" value="Iphone5S" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
            </button>
          </form>
		    	<a href="#specifications" class="waves-effect waves-green btn-flat center-align">Specifications</a>
		    </div>
		</div>
		<div id="appleiphone5se" class="modal">
	  		<div class="modal-content">
		      	<h4>Apple Iphone 5SE<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
		      	<img src="images/apple/iphone5se/5se.jpg" class="modalPopup responsive-img">
		    </div>
		    <div class="modal-footer">
		    	 <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Iphone5Se" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart
             </button>
          </form>
		    	<a href="#specifications" class="waves-effect waves-green btn-flat right">Specifications</a>
		    </div>
		</div>
		<div id="appleiphone6_" class="modal">
	  		<div class="modal-content">
		      	<h4>Apple Iphone 6<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
		      	<img src="images/apple/iphone6/iphonesilver6.jpeg" class="modalPopup responsive-img">
		    </div>
		    <div class="modal-footer">
		    	 <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Iphone6" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
		    	<a href="#specifications" id="model_name" class="modal-action waves-effect waves-green btn-flat right">Specifications</a>
		    </div>
		</div>
		<div id="appleiphone6PLUS" class="modal">
	  		<div class="modal-content">
		      	<h4>Apple Iphone 6 Plus<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
		      	<img src="images/apple/iphone6plus/iphone6goldplus.jpeg" class="modalPopup responsive-img">
		    </div>
		    <div class="modal-footer">
		    	 <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Iphone6Plus" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
          <form action="demo.jsp" method="POST">
		    	  <button type="submit" name="spec_name" value="Iphone6Plus" class="waves-effect waves-green btn-flat right">Specifications</button>
          </form>
		    </div>
		</div>
    <div id="specifications" class="modal">
      <div class="modal-content">
        <h4> PHONE NAME <a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a> </h4>
        <%
            // if(spec_name1!= null){
            //   response.sendRedirect("demo.jsp");
            // }
        %>
      </div>
      <div class="modal-footer">
      </div>
    </div>

	</body>
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script>
    $(document).ready(function(){

      $(document).scrollTop(function() { 
       $('.nav').css('background-color', '#2196f3');
      });
    });
    	  $(document).ready(function(){
    	$(".modal").modal();
 		 });

    	$(document).ready(function(){
          $('.button-collapse').sideNav();
        });

      $(document).ready(function(){
        $('.tooltipped').tooltip({delay: 50});
      });
	
  		$(document).ready(function() {
    		Materialize.updateTextFields();
  		});
    </script>
</html>
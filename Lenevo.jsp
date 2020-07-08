<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.User" %>
<%@ page import="beans.Order" %>
<%
  String name = "User";
  User u;
%>
<html>
	<head>
    	<title>Lenovo Phones</title>
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
                    %>                  <!-- <a href="#LoginModal" class="side_nav">Login</a> -->
                  </li>
              </ul>
            </div>
        </nav>
      </div>
	  		<div class="row back_color marginReduce center-align">
  	  		<div class="col s12 m12 l12">
  	  			<div class="card-panel teal lighten-3 hoverable black-text">
  	  				<h4>Lenovo Collection</h4>
  	  			</div>
  	  		</div>
	  	  </div>
	  	<!-- Row 1-->
	  	<div class="row card_padding back_color marginReduce">
        <div class="col s12 m6 l4">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="responsive-img" src="images/lenovo/a_7000_turbo/lenovo-a7000-turbo.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">Lenovo A 7000 Turbo</span>
                </div>
                <div class="card-action">
                  <a href="#a_7000turbo" class="waves-effect waves-light btn white-text tooltipped" data-position="bottom" data-delay="50" data-tooltip="List Of HTC Mobiles">View More</a>
                </div>
            </div>
          </div>
  	  		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/lenovo/a_plus/lenovo-a-plus_black.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Lenovo A Plus</span>
          			</div>
          			<div class="card-action">
            			<a href="#a_plus" class="waves-effect waves-light btn modalmodal-close white-text">View More</a>
          			</div>
        		</div>
      		</div>
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/lenovo/a6600/a_6600.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Lenovo A6600</span>
          			</div>
          			<div class="card-action">
            			<a href="#a_6600" class="waves-effect waves-light btn white-text">View More</a>
          			</div>
        		</div>
      		</div>
      	</div>
      	<div class="row">
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/lenovo/c2/pic01.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">Lenovo C2</span>
          			</div>
          			<div class="card-action">
            			<a href="#c2" class="waves-effect waves-light btn white-text">View More</a>
          			</div>
        		</div>
      		</div>
          <div class="col s12 m6 l4">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="img-responsive" src="images/lenovo/k5note/k5_note.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">Lenovo K5 Note</span>
                </div>
                <div class="card-action">
                  <a href="#k5note" class="waves-effect waves-light btn white-text">View More</a>
                </div>
            </div>
          </div>
          <div class="col s12 m6 l4">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="responsive-img" src="images/lenovo/k6/k6_.png">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">Lenovo K6</span>
                </div>
                <div class="card-action">
                  <a href="#k6" class="waves-effect waves-light btn white-text">View More</a>
                </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col s12 m6 l4">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="responsive-img" src="images/lenovo/lemon3/images.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">Lenovo Lemon 3</span>
                </div>
                <div class="card-action">
                  <a href="#lemon_3" class="waves-effect waves-light btn white-text">View More</a>
                </div>
            </div>
          </div>
          <div class="col s12 m6 l4">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="img-responsive" src="images/lenovo/tab3/tab_3.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">Lenovo Tab 3</span>
                </div>
                <div class="card-action">
                  <a href="#tab_3" class="waves-effect waves-light btn white-text">View More</a>
                </div>
            </div>
          </div>
          <div class="col s12 m6 l4">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="responsive-img" src="images/lenovo/vibe_k5/vibek5.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">Lenovo Vibe K5</span>
                </div>
                <div class="card-action">
                  <a href="#vibe_k5" class="waves-effect waves-light btn white-text">View More</a>
                </div>
            </div>
          </div>
        </div>
        <!-- Modal Popup -->
        <div id="a_7000turbo" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo A 7000 Turbo<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/lenovo/a_7000_turbo/a_7000_turbo.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo A7000 Turbo" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>
        <!-- Modal Popup -->
        <div id="a_plus" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo A Plus<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/lenovo/a_plus/a_plus.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo A Plus" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
            </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>
        <!-- Modal Popup -->
        <div id="a_6600" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo A 6600</h4>
              <img src="images/lenovo/a6600/a_6600_.png" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo A6600" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
            </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="c2" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo C2</h4>
              <img src="images/lenovo/c2/lenovo-vibe-c2.png" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo C2" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
            </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="k5note" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo K5 Note<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/lenovo/k5note/vibe_k5.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo K5 Note" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
            </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="k6" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo K6<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/lenovo/k6/lenovo_k6.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo K6" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="modal-action waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>
       <!-- Modal Popup-->
        <div id="lemon_3" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo Lemon 3<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/lenovo/lemon3/lemon_3.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
           <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo Lemon 3" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
            </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="tab_3" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo Tab 3<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/lenovo/tab3/tab_3_1.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
          <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo Tab 3" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>
        <div id="vibe_k5" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>Lenovo K5<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/lenovo/vibe_k5/vibe_k5.png" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="Lenovo K5" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
            </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
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
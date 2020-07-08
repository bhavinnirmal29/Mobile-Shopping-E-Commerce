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
      <title>Contact Us </title>
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
                    <a href="#LoginModal" class="waves-effect waves-light">Login</a>
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
	  		<div class="col s12 m12 l12">
	  			<div class="card-panel grey lighten-2 hoverable pink-text">
	  				<h4>HTC Collection</h4>
	  			</div>
	  		</div>
	  	</div>
	  	<!-- Row 1-->
	  	<div class="row">
  	  		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/htc/butterfly3/butterfly.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">HTC Butterfly</span>
          			</div>
          			<div class="card-action">
            			<a href="#htcButterfly" class="waves-effect waves-light btn modalmodal-close white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/htc/htcdesire828/desire_828.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">HTC Desire 828</span>
          			</div>
          			<div class="card-action">
            			<a href="#htcdesire828" class="waves-effect waves-light btn white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/htc/one_e9s/htc_one_e9s.jpeg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">HTC One E9 S</span>
          			</div>
          			<div class="card-action">
            			<a href="#one_e9s" class="waves-effect waves-light btn white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      	</div>
      	<div class="row">
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img class="responsive-img" src="images/htc/onea9/one_a9_front.jpg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">HTC One A9</span>
          			</div>
          			<div class="card-action">
            			<a href="#onea9" class="waves-effect waves-light btn white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
      		<div class="col s12 m6 l4">
        		<div class="card medium hoverable">
          			<div class="card-image waves-effect waves-block waves-light">
            			<img src="images/htc/oneme/one_me.jpeg">
          			</div>
          			<div class="card-content">
            			<span class="card-title grey-text text-darken-4">HTC One ME</span>
          			</div>
          			<div class="card-action">
            			<a href="#one_me" class="waves-effect waves-light btn white-text">Click Here For More</a>
          			</div>
        		</div>
      		</div>
          <div class="col s12 m6 l4">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img src="images/htc/onem9/htc_one_m9.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">HTC One M9</span>
                </div>
                <div class="card-action">
                  <a href="#htc_one_m9" class="waves-effect waves-light btn white-text">Click Here For More</a>
                </div>
            </div>
          </div>
      	</div>
        <div class="row">
          <div class="col s12 m8 l6">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="responsive-img" src="images/htc/uplay/uplay.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">HTC UPLAY</span>
                </div>
                <div class="card-action">
                  <a href="#htc_u_play" class="waves-effect waves-light btn white-text">Click Here For More</a>
                </div>
            </div>
          </div>
          <div class="col s12 m8 l6">
            <div class="card medium hoverable">
                <div class="card-image waves-effect waves-block waves-light">
                  <img src="images/htc/uultra/HTC-U-Ultra.jpg">
                </div>
                <div class="card-content">
                  <span class="card-title grey-text text-darken-4">HTC U Ultra</span>
                </div>
                <div class="card-action">
                  <a href="#htc_u_ultra" class="waves-effect waves-light btn white-text">Click Here For More</a>
                </div>
            </div>
          </div>
        </div>

        <div id="htcButterfly" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC Butterfly<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/butterfly3/butterfly.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="HTC Butterfly" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>
        <!-- Modal Popup -->
        <div id="htcdesire828" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC Desire 828<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/htcdesire828/desire_828.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
           <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="HTC Desire 828" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>
        <!-- Modal Popup -->
        <div id="one_e9s" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC One E9 S<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/one_e9s/one_e9s.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="HTC One E9 S" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="onea9" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC One A9<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/onea9/one_a9.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
           <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="HTC One A9" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>            
          <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="one_me" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC One Me<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/oneme/one_me.jpeg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
               <button type="submit" name="product" value="HTC One Me" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
               </button>
            </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>
        <div id="htc_one_m9" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC One M9<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/onem9/htc_one_m9.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="HTC One M9" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="htc_u_play" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC U Play<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/uplay/uplay.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="HTC U Play" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="htc_u_ultra" class="modal grey lighten-3">
          <div class="modal-content">
              <h4>HTC U Ultra<a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
              <img src="images/htc/uultra/HTC-U-Ultra.jpg" class="modalPopup responsive-img">
          </div>
          <div class="modal-footer grey lighten-3">
            <form action="Cart.jsp" method="POST">
             <button type="submit" name="product" value="HTC U Ultra" class="waves-effect waves-green btn-flat left" onclick="Materialize.toast('Added To Cart', 4000)">Add to Cart</a>
             </button>
          </form>
            <a href="#!" class="waves-effect waves-green btn-flat right">Specifications</a>
          </div>
        </div>

        <div id="LoginModal" class="modal">
          <div class="modal-content">
            <h4 class="center-align"><span class="blue-text lighten-2">L</span>ogin
            <a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
            <hr>
            <div class="row">
              <form action="index.jsp" method="POST">
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
                    <input id="password" name="pwd" type="password" class="validate">
                    <label for="password">Password</label>
                  </div>
                </div>
                <div class="row">
                  <h6 class="center-align"><input type="submit" class="waves-effect waves-light btn blue lighten-2" value="Login"/></h6>
                </div>
                <div class="row">
                  <h5 class="center-align">Don't Have An Account? <a href="SignUp.jsp" >SignUp</a></h5>
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
          $(".button-collapse").sideNav();
        });

        $(document).ready(function(){
      $(".modal").modal();
     });

  
      $(document).ready(function() {
        Materialize.updateTextFields();
      });
    </script>
</html>

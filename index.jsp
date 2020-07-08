<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.User" %>
<%
  String name = "User";
  User u = null;
%>
  <html>
    <head>
    <title>Home</title>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <link type="text/css" rel="stylesheet" href="css/style.css" media="screen,projection" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
      <div class="navbar-fixed">
        <nav class="transparent">
            <div class="nav-wrapper">
                <a href="index.html" class="brand-logo black-text center-left"><span class="blue-text lighten-2">T</span>he <span class="blue-text lighten-2">M</span>obile <span class="blue-text lighten-2">S</span>hop</a>
              
              <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons black-text">menu</i></a>
              <ul id="nav-mobile" class="right hide-on-med-and-down">
              	<li>
          		 <div class="nav-wrapper">
			      <form>
			        <div class="input-field col s6 m8 l12">
			          <input id="search" type="search" required>
			          <label for="search"><i class="material-icons">search</i>
			        </div>
			      </form>
			    </div>
              	</li>
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
                  <li>
                  <a href="Cart.jsp" class="waves effect waves-light black-text"><i class="material-icons small blue-text">shopping_cart</i></a></li>
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
                    <a href="Info.jsp" class="navlink" data-activites="user_profile">Hi, <%= u.getUserID() %></a>
                    <ul id='user_profile' class='dropdown-content'>
                      <li><a href="Logout.jsp">Logout</a></li>
                      <li><a href="Info.jsp">My Orders</a></li>
                    </ul>
                    <%
                      }else {
                     %>
                        <a href="#LoginModal" class="waves-effect waves-light btn tooltipped" data-position="bottom" ddata-delay="50" data-tooltip="CLick To Login">Login</a>
                    <%
                      }
                    %>
                  <!-- <a href="#LoginModal" class="side_nav">Login</a> -->
                  </li>
                  <li><a href="Cart.jsp" >
              </ul>
            </div>
        </nav>
      </div>
        <div class="slider fullscreen">
            <ul class="slides">
                <li>
                  <img src="images/apple/iphone5s/iphone-5s-gold-3d.jpg">
                    <div class="caption right-align">
                      <h3 class="black-text">Click To Shop</h3>
                      <h5><a href="Apple.jsp" class="waves-effect waves-light btn grey-text text-lighten-3 tooltipped" data-position="bottom" data-delay="50" data-tooltip="List Of Iphones">IPHONES</a></h5>
                    </div>
                </li>
                <li>
                    <img src="images/lenovo/a_plus/a_plus.jpg">
                    <div class="caption center-align">
                      <h3 class="black-text">Click To Shop</h3>
                      <h5><a href="Lenevo.jsp" class="waves-effect waves-light btn grey-text text-lighten-3 tooltipped" data-position="bottom" data-delay="50" data-tooltip="List Of Lenevo Mobiles">LENEVO</a></h5>
                    </div>
                </li>
                 <li>
                    <img class="img-responsive" src="images/htc/one_e9s/one_e9s.jpg">
                    <div class="caption left-align">
                      <h3 class="black-text">Click To Shop</h3>
                      <h5><a href="HTC.jsp" class="waves-effect waves-light btn grey-text text-lighten-3 tooltipped" data-position="bottom" data-delay="50" data-tooltip="List Of HTC Mobiles">HTC</a></h5>
                    </div>
                </li>
                <li>
                    <img src="images/lenovo/a_plus/a_plus.jpg">
                    <div class="caption center-align">
                      <h3 class="black-text">Click To Shop</h3>
                      <h5><a href="Lenevo.jsp" class="waves-effect waves-light btn grey-text text-lighten-3 tooltipped" data-position="bottom" data-delay="50" data-tooltip="List Of Lenevo Mobiles">LENEVO</a></h5>
                    </div>
                </li>
            </ul>
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
                    <input id="user_" data-length="15" name="uname" type="text" class="validate">
                    <label for="user_">Username</label>
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
        <!-- Logout Modal Popup -->
        <div id="Logout" class="modal">
          <div class="modal-content">
            <h3 class="center-align"><span class="blue-text lighten-2">W</span>anna <span class="blue-text lighten-2">L</span>out ? 
            <a class="modal-action modal-close"><i class="material-icons black-text right">close</i></a></h4>
          </div>
          <div class="modal-footer center-align">
            <a class="waves-effect waves-light btn medium" href="index.jsp">Logout</a>
          </div>
        </div>

    <!-- Page Footer -->
      <!-- <div class="row footer_margin">
        <footer class="page-footer blue-grey darken-1">
          <div class="row center-align">
            <div class="col s12 m12 l12">
              <h4><a href="index.html" class="footerlogo">Handmade Creative Items</a></h4>
              <p class="white-text">Information will be provided soon.</p>
            </div>
          </div>
          <div class="row center-align font_1">
              <a href="index.html" class="link">Home<span class="white-text"> |</span></a> 
              <a href="AboutUs.html" class="link">About Us<span class="white-text"> |</span></a> 
                <a href="ContactUs.html" class="link">Contact Us<span class="white-text"> |</span></a> 
            </div>  
            <div class="row center-align">
            </div>
          <div class="row center-align marginReduce footer-copyright" style="margin-bottom:-40px;">
            <div class="col s12 m8 l12">
              © 2016 Copyright Text . 
              All Rights reserved.
          </div>
            </div>
        </footer>
    </div> -->
    </body>
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script>
      $(document).ready(function(){
        $('.slider').slider();
      });


      $(document).ready(function(){
          $(".button-collapse").sideNav();
            // $('.tapTarget').tapTarget('open');
            // $('.tapTarget').tapTarget('close');
        });
      $(document).ready(function(){
        $(".modal").modal();
      });
      
      $(document).ready(function(){
        $('.dropdown-button').dropdown();
      });

      $(document).ready(function() {
        $('input#username').characterCounter();
      });

      $(document).ready(function() {
         Materialize.updateTextFields();
      });

      $(document).ready(function(){
        $('.tooltipped').tooltip({delay: 50});
      });
    </script>
  </html>        
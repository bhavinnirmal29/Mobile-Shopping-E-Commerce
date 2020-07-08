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
    if(session.getAttribute("cart") != null) c = (Cart)session.getAttribute("cart");
    String product;
    if(request.getParameter("product") != null) {
        product = request.getParameter("product");
        c.setProduct(product);
        session.setAttribute("cart", c);
    }
    if(request.getParameter("remove") != null) {
        product = request.getParameter("remove");
        c.removeProduct(product);
        session.setAttribute("cart", c);
    }
%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.User" %>
<html>
    <head>
        <title>Cart</title>
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
                      </li>
                  </ul>
                </div>
            </nav>
        </div>
        <h1 align="center">Cart</h1>
            <form action="Cart.jsp">
            <%
                if(c.getProducts().isEmpty()){
            %>
                <h3 class="blue-text"> Your Cart is Empty! </h3>
                </form>
            <%
                } else {

                Set set = c.getProducts().entrySet();
                Iterator i = set.iterator();
                String prod;
                Integer count;
                while(i.hasNext()) {
                   Map.Entry me = (Map.Entry)i.next();
                   prod = (String)me.getKey();
                   count = (Integer)me.getValue();
            %>
                    <div class="row">
                        <div class="col s6 m8 l12">
                          <div class="card grey lighten-2">
                            <div class="card-content black-text">
                              <span class="card-title"></span>
                                <h4><%=prod%></h4>
                            </div>
                            <div class="card-action">
                                <h6>Remove : <input class="waves-effect waves-light teal btn" type="submit" name="remove" value="<%=prod%>" />
                                <p>Quantity: <%= count %></p></h6>
                            </div>
                          </div>
                        </div>
                      </div>
            <%
                    }
            %>
            </form>
            <form action="CheckOut.jsp">
                <button type="submit" class="waves-effect waves-light center-align btn">
                    CheckOut
                </button>
            </form>
            <%
                }
            %>
    </body>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script>
          $(document).ready(function(){
        $(".modal").modal();
         });

        $(document).ready(function(){
          $('.button-collapse').sideNav();
        });
    
        $(document).ready(function() {
            Materialize.updateTextFields();
        });
    </script>
</html>
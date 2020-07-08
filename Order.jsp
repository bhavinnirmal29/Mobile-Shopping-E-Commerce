<!DOCTYPE html>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.Cart" %>
<%@ page import="beans.Order" %>
<%@ page import="beans.User" %>
<%
    String name="User";
    Cart c = new Cart();
    if(session.getAttribute("cart") != null) c = (Cart)session.getAttribute("cart");
    Order o = new Order();
    o.setFirst(request.getParameter("fname"));
    o.setLast(request.getParameter("l_name"));
    o.setAddress(request.getParameter("address") + ", " + request.getParameter("city") + " - " + request.getParameter("state") + ", " + request.getParameter("country_") + ", " + request.getParameter("_zipcode"));
    o.setCard(request.getParameter("_credi_card"));
    o.setName(request.getParameter("_name_print"));
    o.setDate(request.getParameter("exp_date"));
    o.setCvc(request.getParameter("cvv"));
    o.setProducts(c.getProducts());
    User u = new User("Guest");
    if(session.getAttribute("user") != null) u = (User)session.getAttribute("user");
    u.setOrder(o);
    session.setAttribute("user", u);

%>
  <html>
    <head>
    <title>Order</title>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <link type="text/css" rel="stylesheet" href="css/style.css" media="screen,projection" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
                  <li><a href="#LoginModal" class="navlink">Login</a></li><li>
                   <%
                        if(session.getAttribute("user") != null) {
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
                        if(session.getAttribute("user") != null) {
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
      
      <% Date date = new Date(); %>
            <h1 align="center">Confirmation Page</h1>
            <h3><%= u.getUserID() %>, thank you for you purchase on <%= date %>!</h3>
            <%
                String orderstring = o.toString();
            %>
            <p><%= orderstring %>
            <%
                Set set = c.getProducts().entrySet();
                Iterator i = set.iterator();
                String prod;
                Integer count;
                while(i.hasNext()) {
                   Map.Entry me = (Map.Entry)i.next();
                   prod = (String)me.getKey();
                   count = (Integer)me.getValue();
            %>
                    <br>* <%= prod %> - <%= count %>
            <%
                    }

                Calendar calendar = Calendar.getInstance();
                calendar.add(Calendar.DAY_OF_MONTH, 14);
                date = calendar.getTime();

                SimpleDateFormat s = new SimpleDateFormat("MM/dd/yy");
            %>
                    <br><br>Delivery Date: <%= s.format(date) %>
            </p>
            <form action="index.jsp">
                <input type="submit" value="OK">
            </form>
            <% 
                c = new Cart();
                session.setAttribute("cart", c); 
            %>
    </body>
    <!--Import jQuery before materialize.js-->
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
      $('input#username').characterCounter();
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
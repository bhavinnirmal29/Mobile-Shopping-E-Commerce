<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.Cart" %>
<%@ page import="beans.User" %>

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
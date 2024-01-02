<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.coffee.entity.user" %>
<%@page import="com.coffee.servlet.*" %>
 <%
 user u1=(user)session.getAttribute("User");
 if(u1!=null)
 {
 session.removeAttribute("u1");
 session.invalidate();
 response.sendRedirect("../index.html");
 
 }
 else 
 {
  response.sendRedirect("index.jsp");
 }
 %>       

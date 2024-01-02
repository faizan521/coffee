<%@page import="com.coffee.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="com.coffee.entity.*" %>
<%@page import="com.coffee.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<!DOCTYPE html>
<html lang="eng">
    <head>
         <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <link rel="stylesheet" href="../css/index.css">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">     
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>  
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mukta:wght@300;400;600&family=Pacifico&display=swap" rel="stylesheet"> 
    </head>
    <body class="b">
               <%
                 message m=(message)session.getAttribute("mg");
                 if(m!=null)
                 {            	 
                 %>
                 <div class="alert alert-success text-center " role="alert">
                  <%= m.getContent() %>
                </div>
                 <%
				   session.getMaxInactiveInterval();                 
                   session.removeAttribute("mg");
                  }
                %>  
        <div class="f container">
            <div class="frmlg">
                <h1>SignUp Form</h1>
                <form action="../RegisterUser" method="POST">
                   
                <div class="col-md-8 col-lg-12 col-12">
                  <label for="inputEmail4" class="form-label">Name</label>
                  <input type="text" name="name" class="ifrm1 form-control" id="inputEmail4"
                  placeholder="enter the name"
                  >
                </div>
                <div class="col-md-8 col-lg-12 col-12">
                  <label for="inputAddress" class="form-label">Gmail</label>
                  <input type="email" name="mail" class="ifrm1 form-control" id="inputAddress" placeholder="enter the gmail">
                </div>
                <div class="form-group col-md-8 col-lg-12 col-12">
                  <label for="inputPassword4" class="form-label">Password</label>
                  <input type="password" name="pass" class="ifrm1 form-control " id="inputPassword4"
                  placeholder="enter the password">
                </div>
                <div class="col-md-8 col-lg-12 col-12">
				      <label for="inputGender" class="form-label">Select Gender</label>
				             <br>
				       <input  type="radio" value="male" name="gender">Male	
				       <input type="radio" value="female" name="gender">Female		                
				</div>
				<div class="col-md-8 col-lg-12 col-12">
					<textarea name="about" class="ifrm1 form-control" id="ta" cols="30" row="3" placeholder="Enter Somthing"></textarea>
				</div>
                
                <div class="b2 col-md-6 col-lg-12 col-12">
                  <button type="submit" class="bttn3 text-white">SignUp</button>
                </div>                                      
                </form>
            </div>
        </div>
    </body>
</html>
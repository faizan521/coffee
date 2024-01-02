
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@include file="../components/comp.jsp" %> 
<%@page import="com.coffee.entity.user" %>
<%@page import="com.coffee.servlet.*" %>
<%

 user u1=(user)session.getAttribute("User");
 if(u1==null)
 {
 response.sendRedirect("../index.html");
 }


%>
<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="../css/user.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <% %>
<!-- <div class="flex md:p-5  gap-5 flex-wrap md:flex-row">
  <div class="p-10 bg-gray-500 flex-1 w-40 h-50 ">
    01
  </div>
  <div class="p-10 bg-gray-500 flex-1 w-40 h-50 ">
    02
  </div>
  <div class="p-10 bg-gray-500 flex-1 w-40 h-50 ">
    0
  </div>
</div>-->
<div class="h text-center text-white text-bold"> 
    <div class="s">      
    <h1>Hi'</h1>
    <span class="sp"><h1><%=u1.getName()%></h1></span>
    </div>     
    <div class="k px-5">     
    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci delectus velit itaque placeat dolorem. Temporibus amet consequatur rerum officia, doloremque possimus sapiente provident ad harum velit, culpa quae aperiam.</p>    
    </div>
    <div>
    </div>
    <div class="container-fluid d-flex align-items-center flex-wrap">
<div class="col-lg-5  col-12 g-0 bg-secondary p-lg-5 p-md-2 p-0">
              <div class="cp container-fluid text-white text-center ">
           <div class="m row d-flex flex-row ">
        <div class="mn">
            <!-- start info -->
     <div class="d-flex flex-column">
         
     <div class="d-flex flex-row justify-content-start align-items-center align-content-center">
     <div class="col-3 d-flex align-items-center">
     <img width="40" height="40" src="https://img.icons8.com/3d-fluency/94/user-male-circle.png" alt="bookmark-ribbon"/> 
    </div>
     <div class="col-2 d-flex justify-content-start align-items-center align-content-center">
     <div><h4><%=u1.getId()%></h4></div>
     </div>
     </div>
     
    <div class="d-flex flex-row mt-md-3">
     <div class="col-3 d-flex align-items-center align-content-center">
     <img width="40" height="40" src="https://img.icons8.com/3d-fluency/94/person-male.png" alt="bookmark-ribbon"/> 
    </div>
     <div class="col-2  d-flex justify-content-start align-items-center">
     <h4><%=u1.getName()%></h4>
     </div>
     </div>
     
     <div class="d-flex flex-row mt-md-3">
     <div class="col-3 d-flex align-items-center align-content-center">
     <img width="40" height="40" src="https://img.icons8.com/3d-fluency/94/gmail.png" alt="bookmark-ribbon"/> 
    </div>
     <div class="col-2 d-flex justify-content-start align-items-center">
     <h4><%=u1.getGmail()%></h4>
     </div>
     </div>
   
     
     <div class="d-flex flex-row mt-md-3">
     <div class="col-3 d-flex align-items-center align-content-center">
     <img width="40" height="40" src="https://img.icons8.com/3d-fluency/188/bookmark-ribbon.png" alt="bookmark-ribbon"/> 
    </div>
     <div class="col-2 d-flex justify-content-start align-items-center">
     <h4><%=u1.getGender()%></h4>
     </div>
     </div>
     
     <div class="d-flex flex-row mt-md-3">
     <div class="col-3 d-flex align-items-center align-content-center">
     <img width="40" height="40" src="https://img.icons8.com/3d-fluency/94/hard-working.png" alt="bookmark-ribbon"/> 
    </div>
     <div class="col-2 d-flex justify-content-start align-items-center">
     <h4><%=u1.getAbout()%></h4>
     </div>
     </div>
     <!--
     <div class="d-flex flex-row mt-md-3">
     <div class="col-3">
     <img width="50" height="50" src="https://img.icons8.com/3d-fluency/188/bookmark-ribbon.png" alt="bookmark-ribbon"/> 
    </div>
     <div class="col-2">
     <h4></h4>
     </div>
     </div>
       -->
     <!-- end info -->
     </div>

     
            
 
        </div>
        </div>
     </div>  
</div>     
           
            
<div class="col-lg-7 col-12">
          <!--  <div class="cp container-fluid text-white text-center">
           <div class="m1 row">
        <div class="mb d-flex flex-row">-->
  <div class="mc d-flex flex-wrap align-content-center justify-content-center">   
  
  
  <div class="col-lg-4 col-12 col-md-6 card text-white bg-secondary" style="max-width:20rem; margin:0.5rem;">
  <div class="card-header">
<img width="94" height="94" src="https://img.icons8.com/3d-fluency/94/shopping-cart-loaded.png" alt="shopping-cart-loaded"/>
</div>
<div class="card-body">
 <h5 class="card-title">Orders</h5>
  </div> 
 </div> 
  
     <div class="col-lg-4 col-12 col-md-6 card text-white bg-secondary " style="max-width:20rem;margin:.5rem;">
  <div class="card-header">
<img width="94" height="94" src="https://img.icons8.com/3d-fluency/94/edit.png" alt="edit"/>
</div>
  <div class="card-body">
    <h5 class="card-title">Edit Profile</h5>
  </div>
</div>


  <div class="col-lg-4 col-12 col-md-6 card text-white bg-secondary" style="max-width:20rem; margin:0.5rem;">
  <div class="card-header">
<img width="94" height="94" src="https://img.icons8.com/3d-fluency/188/bookmark-ribbon.png" alt="bookmark-ribbon"/> 
</div>
  <div class="card-body">
    <h5 class="card-title">Booking Info</h5> 
  </div> 
  </div>
  
  
<div class="col-lg-4 col-12 col-md-6 card text-white bg-secondary " style="max-width:20rem;margin:.5rem;">
  <div class="card-header">
  <img width="94" height="94" src="https://img.icons8.com/3d-fluency/94/gift.png" alt="gift"/>
</div>
  <div class="card-body">
    <h5 class="card-title">Coupons</h5>
  </div>
  </div>
  

   </div>
         <!--    <div class="card m-1  col-lg-4 col-md-4 col-sm-4 col-12">
               <a href="" class="v cursor-pointer"><h2>Edit Profile</h2> </a>
            </div>
            <div class="card m-1  col-lg-4 col-md-4 col-sm-4 col-12">
            <a href="" class="v cursor-pointer"><h2>Booking Info </h2></a>
            </div>     
            <div class="card m-1  col-lg-4 col-md-4 col-sm-4 col-12">
               <a href="" class="v cursor-pointer"><h2>Coupons</h2> </a>
            </div>
            <div class="card m-1  col-lg-4 col-md-4 col-sm-4 col-12">
            <a href="" class="v cursor-pointer"><h2>Orders</h2></a>
            </div>  -->      
       
       
     </div>  
</div>
  <!--    </div>        
        </div> --> 
           
    <div class="log container bg-secondary">
        <div class="lg">
            <a class="l" href="logout.jsp">Logout</a>
        </div>
    </div>   
    

<!--    <script>     
  </script>   -->
</body>
</html>
               




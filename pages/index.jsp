<%@page import="com.coffee.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="com.coffee.entity.user" %>
<%@page import="com.coffee.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
user u1=(user)session.getAttribute("User");
//if(u1==null)
//{
	///response.sendRedirect("../index.html");
//}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CoffeeShop</title>
    <link rel="stylesheet" href="../css/index.css">
    <script defer src="../js/jsfile.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">     
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>  
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mukta:wght@300;400;600&family=Pacifico&display=swap" rel="stylesheet">
 
   <!-- <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mukta:wght@300;400;600&family=Pacifico&display=swap" rel="stylesheet"> -->
</head>
<body data-bs-spy="scroll" data-bs-target="#navbar">
 
  <!-- <body> -->
    <div class="container-fluid">
    <div class="n row">
      <div class="n col-12">
      <nav class="nav navbar-dark navbar-expand-lg fixed-top d-flex flex-row  p-0 m-0" id="navbar">
            <div class="container g-0 ">
          
              <button class="navbar-toggler border-2 px-2 py-1 " type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
             <!--   <a class="navbar-brand" href="#index.jsp"><img src="../images/logo.png" class="ms-5" alt=""></a> --> 
                <ul class="navbar-nav me-auto mb-0 mb-lg-0 text-center py-2">
                  <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#carouselExampleDark">Home</a>
                  </li>
                  <li class="nav-item">
                  <a class="nav-link" href="#about">About</a>
                  </li>
                  <li class="nav-item">
                  <a class="nav-link" href="#products">Products</a>
                  </li>                       
                  <li class="nav-item">
                  <a class="nav-link" href="#voucher">Vouchers</a>
                  </li>
                  <li class="nav-item">
                  <a class="nav-link" href="#contact">Contact</a>
                  </li>   
                </ul>
                <div class="log">
                <ul class="ul">
                <li class="li">
                <div class="b">
                    <a class="or" href="user.jsp">
                    <%
                    if(u1!=null)
                    {
                    %>
                    	  <%=u1.getName()%>  
                    <%	   
                    }
                    %>
                    <%
                     if(u1==null)              
                     {
                    	response.sendRedirect("../index.html"); 
                     }    
                    %>                        
                 
                    </a>
                </div>
                </li>
<!--                <li class="li1">
                <div class="b">
                <a class="or" href="jsppages/signup.html">Signup</a>
                </div>  
                </li>            -->
                </ul>
                </div>      
            </div>
            </div>
       </nav> 
    </div>    
    </div>
    </div>
    <!--carousel-->
    <div class="c44" >
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <!--     <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button> -->
      </div>
      <div class="o">
      </div>
    <!-- <div> -->
      <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="10000">
          <img src="../images/top-view-cup-coffee-with-coffee-beans-falling-out-glass-jar-wooden-surface.jpg" class="img-fluid img d-flex w-100 " alt="...">
          <div class="carousel-caption">
            <h1>Coffee Time</h1>
            <p class="mt-3">Some representative placeholder content for the first slide.</p>
            
            
            
            
  <div class="b0 mt-sm-3 mt-md-4">
      <a class="bttn1" href="booking.jsp" name="book">BookTable
             </a>
<!--  <div class="modal fade" id="bookModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </div>  -->
      
 </div>
           
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="10000">
          <img src="../images/top-view-cup-coffee-with-coffee-beans-falling-out-glass-jar-wooden-surface.jpg" class="img-fluid img d-flex w-100" alt="...">
          <div class="carousel-caption">
            <h1>Coffee Time</h1>
            <p class="mt-3">Some representative placeholder content for the second slide.</p>
            <div class="b0 mt-sm-3 mt-md-4">
                <a class="bttn1" href="booking.jsp" name="book">BookTable</a>
                  
<!-- <div class="modal fade" id="bookModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div> -->
                  
                  
 </div>
      
          </div>
        </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!-- </div> -->
    </div>
    </div>  
    <!-- about section -->
 <div class="container-fluid g-0" id="about">    
 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00C1B9" fill-opacity="1" d="M0,288L40,256C80,224,160,160,240,112C320,64,400,32,480,37.3C560,43,640,85,720,128C800,171,880,213,960,202.7C1040,192,1120,128,1200,112C1280,96,1360,128,1400,144L1440,160L1440,0L1400,0C1360,0,1280,0,1200,0C1120,0,1040,0,960,0C880,0,800,0,720,0C640,0,560,0,480,0C400,0,320,0,240,0C160,0,80,0,40,0L0,0Z"></path></svg> 

<div class="ab row text-white g-0">
         <h2 class="mb-0">About Us</h2>
<div class="abu1 col-lg-6 col-md-6 col-12">
         <p class="pr">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatum distinctio officia perferendis corporis commodi fugit assumenda animi placeat nulla enim itaque facilis dicta ullam accusamus in recusandae totam modi, autem reiciendis ab? Debitis, facere. Reprehenderit natus fugiat tenetur nostrum sunt sed, perferendis, eum voluptates delectus ipsam neque laborum repellendus ab totam tempora ratione dolor quibusdam laboriosam consectetur. Similique corrupti dolorum minima, ipsum fugiat sequi exercitationem.</p>
         <p class="pr">Reprehenderit natus fugiat tenetur nostrum sunt sed, perferendis, eum voluptates delectus ipsam neque laborum repellendus ab totam tempora ratione dolor quibusdam laboriosam consectetur. Similique corrupti dolorum minima, ipsum fugiat sequi exercitationem.</p>
  </div>
  <div class="abu col-lg-6 col-md-6 col-12">
      <div class="abt3">
             <img src="../images/coffee-high-definition-wallpapers-1920x1080-removebg-preview.png" class="abt img-fluid" alt="" srcset="">
      </div>
    </div>
  </div>
</div>
    <div class="wave1">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1240 300"><path fill="#00C1B9" fill-opacity="1" d="M0,96L48,133.3C96,171,192,245,288,240C384,235,480,149,576,101.3C672,53,768,43,864,58.7C960,75,1056,117,1152,117.3C1248,117,1344,75,1392,53.3L1440,32L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
   </div>


        <!-- end section -->
 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00C1B9" fill-opacity="1" d="M0,288L40,256C80,224,160,160,240,112C320,64,400,32,480,37.3C560,43,640,85,720,128C800,171,880,213,960,202.7C1040,192,1120,128,1200,112C1280,96,1360,128,1400,144L1440,160L1440,0L1400,0C1360,0,1280,0,1200,0C1120,0,1040,0,960,0C880,0,800,0,720,0C640,0,560,0,480,0C400,0,320,0,240,0C160,0,80,0,40,0L0,0Z"></path></svg>
        <!-- products starts -->
        
        <div id="products">
                  
           <div class="ab row text-white g-0">
          <h2>Our Special Coffees</h2>
 <div class="abu1 col-lg-6 col-md-6 col-12">
       <h3>Black Coffee</h3>
        <div class="book">
        <a href="">BookTable</a>
        </div>

   </div>
   <div class="abu col-lg-6 col-md-6 col-12">
       <div class="abt3">
              <img src="../images/close-up-view-brown-coffee-seeds-with-coffee-dark.jpg" class="abt5 img-fluid" alt="" srcset="">
       </div>
     </div>
   </div>
 <div class="ab1 row text-white g-0">
<div class="abu1 col-lg-6 col-md-6 col-12">
        <h3>American Capaccino</h3>
        <div class="book">
        <a href="">BookTable</a>
        </div>
</div>
<div class="abu col-lg-6 col-md-6 col-12">
<div class="abt3">
      <img src="../images/cup-coffee-with-heart-drawn-foam.jpg" class="abt5 img-fluid" alt="" srcset="">
</div>
</div>
</div> 
</div>      
        <!-- products end -->

        <!-- form starts -->
        <div class="frm container-fluid" id="frmsb">
          <div class="row">
           <h2>Touch With Us</h2>     
               <div class="frm5 col-md-6 col-lg-6 col-12">
                   <form class="row g-3" action="jsppages/message.jsp" method="POST">
                  
                <div class="col-md-12 col-lg-12 col-12">
<!--              <label for="inputtext" class="form-label">Name</label>
                  <input type="text" name="name" class="ifrm form-control" id="inputtext"
                  placeholder="enter the name"
                  >-->
                    <label for="formGroupExampleInput" class="form-label">Name</label>
                    <input type="text" name="name" class="ifrm form-control" id="formGroupExampleInput" placeholder="Example name">
                </div>
                <div class="col-md-12 col-lg-12 col-12">
<!--                  <label for="inputAddress" class="form-label">Email</label>
                  <input type="email" name="mail" class="ifrm form-control" id="inputAddress"
                  placeholder="enter the email"
                  >-->
                      <label for="inputEmail4" class="form-label">Email</label>
                      <input type="email" name="mail" class="ifrm form-control" id="inputEmail4">
                </div>
                <div class="col-md-12 col-lg-12 col-12">
                  <label for="inputAddress4" class="form-label">State</label>
                  <input type="text" name="snohm" class="ifrm form-control" id="inputAddress4" placeholder="street and home no">
                </div> 
                <div class="col-md-12 col-lg-12 col-12">
                  <label for="inputCity" class="form-label">City</label>
                  <input type="text" name="city" class="ifrm form-control" id="inputCity"
                  placeholder="Enter ur city">
               </div>
               <div class="col-md-12 col-lg-12 col-12">
                <label for="msgf" class="form-label">Message</label>
             <textarea class="ifrm" name="msgfrm" id="msgf"
             placeholder="Write Ur Message"
             rows="3"
             ></textarea>
              </div>
                <div class="col-md-12 col-lg-12 col-12">
                  <button type="submit" class="bttn2 text-white">Send</button>
                </div>
              </form>
            </div>
           

            <div class="frm3 col-md-6 col-lg-6 col-12">
              <img src="../images/3376542.jpg" class="img-fluid" alt="">
            </div>
          </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00C1B9" fill-opacity="1" d="M0,256L40,245.3C80,235,160,213,240,181.3C320,149,400,107,480,122.7C560,139,640,213,720,213.3C800,213,880,139,960,138.7C1040,139,1120,213,1200,229.3C1280,245,1360,203,1400,181.3L1440,160L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"></path></svg>
        <!-- end form -->
        <!-- <div class="f2"> -->
            <!-- <img src="images/Vector Smart Object  (4).png" class="img2 img-fluid" alt="">  -->
            <!-- <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00B1B9" fill-opacity="1" d="M0,288L48,272C96,256,192,224,288,197.3C384,171,480,149,576,165.3C672,181,768,235,864,250.7C960,267,1056,245,1152,250.7C1248,256,1344,288,1392,304L1440,320L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg> -->      
 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00C1B9" fill-opacity="1" d="M0,288L40,256C80,224,160,160,240,112C320,64,400,32,480,37.3C560,43,640,85,720,128C800,171,880,213,960,202.7C1040,192,1120,128,1200,112C1280,96,1360,128,1400,144L1440,160L1440,0L1400,0C1360,0,1280,0,1200,0C1120,0,1040,0,960,0C880,0,800,0,720,0C640,0,560,0,480,0C400,0,320,0,240,0C160,0,80,0,40,0L0,0Z"></path></svg>
 <!--voucher-->
 <div class="c5" id="voucher">
  <div class="container-fluid">
<div class="row cm">
  <h2 class="col-12 head text-center ">Vouchers</h2>
  <div class="col-12 img4">
    <img src="../images/im2.png" class="img-fluid img5" alt="">
  </div>
  <div class="mt-lg-5 mt-md-5 mt-5 col-12 bttn">
    <div>
<a class="bttn1">Get Vouchers Now</a>
    </div>
  </div>
</div>
</div>
</div>

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00C1B9" fill-opacity="1" d="M0,256L40,245.3C80,235,160,213,240,181.3C320,149,400,107,480,122.7C560,139,640,213,720,213.3C800,213,880,139,960,138.7C1040,139,1120,213,1200,229.3C1280,245,1360,203,1400,181.3L1440,160L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"></path></svg>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00C1B9" fill-opacity="1" d="M0,288L40,256C80,224,160,160,240,112C320,64,400,32,480,37.3C560,43,640,85,720,128C800,171,880,213,960,202.7C1040,192,1120,128,1200,112C1280,96,1360,128,1400,144L1440,160L1440,0L1400,0C1360,0,1280,0,1200,0C1120,0,1040,0,960,0C880,0,800,0,720,0C640,0,560,0,480,0C400,0,320,0,240,0C160,0,80,0,40,0L0,0Z"></path></svg> 
<div class="c6" id="contact">
<div class="container">
<div class="row cm">
<h2 class="text-center">We are opens</h2>
<div class="time">
  <h4>Monday To Friday</h4>
  <h5>10:00AM To 10:00PM</h5>
</div>
<div class="time">
  <h4>Saturday To Sunday</h4>
  <h5>10:00AM To 10:00PM</h5>
</div>
</div>
</div>
</div> 

<!-- end -->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00C1B9" fill-opacity="1" d="M0,256L40,245.3C80,235,160,213,240,181.3C320,149,400,107,480,122.7C560,139,640,213,720,213.3C800,213,880,139,960,138.7C1040,139,1120,213,1200,229.3C1280,245,1360,203,1400,181.3L1440,160L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"></path></svg>
<div class="foot container-fluid">
<div class="fot g-0 row">
  <div class="logo col-12 col-md-4 col-lg-3">
    <a class="navbar-brand" href="#">
      <img src="../images/logo.png" class="img-fluid" alt=""></a>
  </div>
  <div class="col-12 col-md-4 col-lg-4">
   <h2 class="ff text-center">information</h2>
  <div class="ftt">
 
  <div class="t"> 
       <img src="../images/right-arrow.png" alt="" srcset="">
       <img src="../images/right-arrow.png" alt="" srcset="">
       <img src="../images/right-arrow.png" alt="" srcset="">
       <img src="../images/right-arrow.png" alt="" srcset="">
       <img src="../images/right-arrow.png" alt="" srcset="">
  </div>  
    
    <ul class="navbar mb-0 mb-lg-0">
      <li class="nav-item">
      <a class="nav-link active" aria-current="page" href="#">Home</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Vouchers</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
  </div>
  </div>
  <div class="col-12 col-md-4 col-lg-4">    
    <h2 class="ff text-center">information</h2>
  <div class="ftt">

  <div class="t">
    <img src="../images/right-arrow.png" alt="">
    <img src="../images/right-arrow.png" alt="">
    <img src="../images/right-arrow.png" alt="">
    <img src="../images/right-arrow.png" alt="">
    <img src="../images/right-arrow.png" alt="">
  </div>
    <ul class="navbar mb-0 mb-lg-0">
      <li class="nav-item">
      <a class="nav-link active" aria-current="page" href="#">Home</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Vouchers</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
 </div>
</div>
</div>
</div>
<script src="js/jsfile.js"></script>
</body>

</html>

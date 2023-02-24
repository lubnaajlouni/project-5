<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Project__5_.HomePage" %>
<%@ import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <title><%--<link href="Home.css" rel="stylesheet" />--%>  </title>
            <link href="Home.css" rel="stylesheet" />
            <link href="slider.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/cd46a65f5c.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>

    <style>
        #login:hover {
    border-radius: 15px;
    font-size: 20px;
    color: #E61F57;
}
        .card1 div:first-child {
            height :70%;
        }

        .card1 div:first-child img{
         height:100%;
         width:100%;

        }
    </style>
<%--    //slider js--%>


<%--html+css      --%>
</head>
<body>
    <form id="form1" runat="server">
 <!-- Navbar -->
<div style="background-color:none;" class="Navbar">

    <div class="both"> 
        <div class="logo">
            <div><img src="images/logo6.png" style="height:100px;"/></div> 
        </div>
        <i class="fa-solid fa-bars"></i>
        <div class="nav"> 
            <ul type="none">
                <li><a href="HomePage.aspx" id="items">Home</a></li>
               
                <li><a href="Categories-page.aspx" id="items">Shop</a></li>
                <li><a href="Profile.aspx"id="items" >Profile</a></li>
                <li><a href="contactwebform.aspx" id="items">Contact Us</a></li>
<%--                <li><a href="about_us.aspx" id="items">About Us</a></li>--%>
                <li><a href="login.aspx" runat="server" id="login">Log In</a></li>
                 <li><a href="Cart.aspx" id="items"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="30" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                 <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                 </svg></a> </li>
            </ul>
        </div>
    </div>
</div>

<%--    /slider/--%>
<div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/first.jpg" class="d-block w-100" alt="..."/>
        <div class="carousel-caption d-none d-md-block">
  
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/sec.jpg" class="d-block w-100" alt="..."/>
        <div class="carousel-caption d-none d-md-block">
         
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/th.jpg" class="d-block w-100" alt="..."/>
        <div class="carousel-caption d-none d-md-block">
        
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<br /><br />
        <!--Text-->
        <div class="container">
            <div class="all">
                 <a href="#cat" class="" style="margin-left:550px; text-decoration:none; color:white; border:1px solid #E61F57; font-size:25px; padding: 15px; border-radius:10px; background-color:#E61F57"><span><b>Our Category</b></span><i> </i></a><br /> <br /><br /><br />
                <div class="text1"><h1 style="text-align-last:center; color:#0B4A80;">Your Health Is Our Top Priority </h1></div>
                <div class="text2"><p style="text-align-last:center; color:gray;">Good health is a state of mental, physical and social well being and it does not just mean the absence of disease! </p></div>
                <a href="about_us.aspx"class="cta1"style="float:right; text-decoration:none;"><%--<button class="cta1"style="float:right;"/ >--%>
                <span class="hover-underline-animation"> Read More </span>
                <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" id="arrow-horizontal">
                <path transform="translate(30)" d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z" data-name="Path 10" id="Path_10"></path>
                </svg>
                </button></a>

            </div>
        </div><br /><br /><hr />

        <!--Our Mission-->

         <div class="container">
            <div class="all">
                <div class="text1"><p style="text-align-last:center; color:gray; font-weight:bolder" >Our Mission </p></div>
                <div class="text2"><h1 style="text-align-last:center; color:#0B4A80;">Step By Step To Get Your Solution </h1></div>
                </div>
               </div><br />
             
    <!--’MissionCards-->
      <div class="container">
      <div class="achievements">
      <div class="work" >
      <i class="fas fa-atom" style="color:#E61F57;"></i>
      <p class="work-heading">Get Your Solution</p>
      <p class="work-text">Good health is a state of mental, physical and social well being and it does not just mean the absence of disease!</p>
      </div>
      <div class="work">
      <i class="fas fa-skiing" style="color:#E61F57;"></i>
      <p class="work-heading">Health Complaints</p>
      <p class="work-text" >Good health is a state of mental, physical and social well being and it does not just mean the absence of disease!</p>
      </div>
      <div class="work">
      <i class="fas fa-ethernet"  style="color:#E61F57;"></i>
      <p class="work-heading">Health Management</p>
      <p class="work-text">Good health is a state of mental, physical and social well being and it does not just mean the absence of disease!</p>
    </div>
  </div>
          </div><br /><br />
        
            <!--Cards-->
        
        <div class="container" id="cat">
             <h1 style="text-align-last:center ; color:#0B4A80;"> Our Category</h1><br />
        <div id="all">
           
            <%
                SqlConnection con = new SqlConnection("data source=DESKTOP-EK069V4\\SQLEXPRESS; database = project5; integrated security=SSPI");
                string q = "select * from Category";
                con.Open();
                SqlCommand com = new SqlCommand(q, con);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                   
                %>
     
                  <div class="card1 card" >
                  <div class="bg-image hover-overlay ripple"data-mdb-ripple-color="light">
                    <img src="images/<%=dr[2]%>" class="img-fluid"/>
                    <a href="#!">
                      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                    </a>
                  </div>
                  <div class="card-body">
                    <h5  ><%=dr[1]%></h5>
                   <%-- <p >Some quick example text to build on the card title and make up the bulk of the card's content.</p>--%>
                    <a class="cta" href="http://localhost:65455/Categories-page.aspx?category=<%=dr[1]%>"><%--<a class="cta" href='Categories-page.aspx?category=<%dr[1]%>'>--%>
                      <span>Show More</span>
                      <svg viewBox="0 0 13 10" height="10px" width="15px">
                        <path d="M1,5 L11,5"></path>
                        <polyline points="8 1 12 5 8 9"></polyline>
                      </svg>
                    </a>
                  </div>
              </div>
           <% } %>
        </div>
        </div>
        <br /><br />
<%--                <div></div>--%>


        <!--Discount-->
<%--<div id="sale">
            <div class="container">
                <div id="container-sale" style="background-color:white; margin-top:50px;">
            <div class="card mb-8" style="margin-top:40px; margin-bottom:40px;">
  <div class="row no-gutters" style="background-color:#E6E6E6;">
        <div class="col-md-6">
      <div class="card-body" style="    margin-left: 50px;">
        <h5 class="card-title" style="font-size:90px;">10% FREE</h5>
        <p class="card-text" style="font-size:20px;font-weight:bold;margin-bottom:50px;">IN REHABILITATION PRODUCTS
DURING THIS MONTH

COUPON CODE: MEDICDAY2022</p>
       <a href="Categories-page.aspx"> <p class="card-text"><small class="text-muted" style="font-size:30px;color:cornflowerblue;">Shop Now</small></p></a>
      </div>
    </div>
    <div class="col-md-1">
      <img id="disc" src="images/sales2.jpg"  <%--style="width=600%;--%><%--"/>--%>
   <%-- </div>

  </div>
</div>
                    </div>
                </div>
        </div>--%>

             <div id="sale">
            <div class="container">
                <div id="container-sale" style="/*background-color:white;*/ margin-top:50px;">
            <div class="card mb-8" style="margin-top:40px; margin-bottom:40px;">
  <div class="row no-gutters">
        <div class="col-md-6">
      <div class="card-body" style="    margin-left: 50px;">
        <h5 class="card-title" style="font-size:90px;">10% FREE</h5>
        <p class="card-text" style="font-size:20px;font-weight:bold;margin-bottom:50px;">IN REHABILITATION PRODUCTS
DURING THIS MONTH

COUPON CODE: MEDICDAY2022</p>
       <a href="Categories-page.aspx"> <p class="card-text"><small class="text-muted" style="font-size:30px;color:cornflowerblue;">Shop Now</small></p></a>
      </div>
    </div>
    <div class="col-md-1">
      <img src="images/newsale.png"  />
    </div>
  
  </div>
</div>
                    </div>
                </div>
        </div>


      <!--Services-->

         
        <div class="container">
        <h1 style="text-align-last:center ; color:#0B4A80;"> Services For You!</h1><br />
        <div class="container">
      <div class="achievements">
      <div class="work" >
      <i class="fa-solid fa-truck-fast" style="color:#E61F57;"></i>
      <p class="work-heading"> Delivery</p>
      <p class="work-text">How Can I Get My Order?</p>
      </div>
      <div class="work">
    <i class="fa-solid fa-bag-shopping" style="color:#E61F57;"></i>
      <p class="work-heading">Order Status</p>
      <p class="work-text" >How To Exchange My Product</p>
      </div>
      <div class="work">
    <i class="fa-solid fa-arrow-right-arrow-left"  style="color:#E61F57;"></i>
      <p class="work-heading">Exchange</p>
      <p class="work-text">Where Is My Order?</p>
    </div>
          </div>
            </div>
  </div><br /><br /><br /><br /><br /><br /><br />

   <!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted" style= "background-color:#0B4A80 !important; color:white !important;">
  <!-- Section: Social media -->
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
   
    <!-- Right -->
  </section>
  <!-- Section: Social media -->

  <!-- Section: Links  -->
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Medical
          </h6>
          <p>
           Good health is a state of mental, physical and social well being and it does not just mean the absence of disease!
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Products
          </h6>
          <p>
            Covid-19
          </p>
          <p>
            Equipments
          </p>
          <p>
            Primary Care
          </p>
         
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Useful links
          </h6>
          <p>
            <a href="contactwebform.aspx" class="text-reset">Contact Us</a>
          </p>
          <p>
            <a href="about_us.aspx" class="text-reset">About Us</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
          <p><i class="fas fa-home me-3"></i> Jordan - Irbid </p>
          <p>
            <i class="fas fa-envelope me-3"></i>
           medical@gmail.com
          </p>
          <p><i class="fas fa-phone me-3"></i> +962 777 77 999</p>
         
        </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
    </div>
  </section>
  <!-- Section: Links  -->

 
  <!-- Copyright -->
</footer>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>


        </form>
</body>
</html>
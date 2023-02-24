<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categories-page.aspx.cs" Inherits="Project__5_.Categories_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My-Website</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width",initial-scale="1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <link href="StyleSheet1.css" rel="stylesheet"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
     <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css%22/%3E "/>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>--%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/cd46a65f5c.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg-img">
            <%-- <nav class="navbar navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="#">
      <span><img src="images/logo.png"  alt="Medical" width="90" height="70"/></span>  Medical
    </a>
 
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="nav navbar-nav navbar-right">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Login</a>
        </li>
           <li class="nav-item">
          <a class="nav-link" href="#">Registration</a>
        </li>
          </ul>
         </div>
       </div>
</nav>--%>

<div class="Navbar">
    <div class="both"> 
        <div class="logo">
            <div><img src="images/logo6.png" style="height:100px;"/></div> 
        </div>
        <i class="fa-solid fa-bars"></i>
        <div class="nav"> 
            <ul type="none">
                <li><a href="HomePage.aspx" id="items">Home</a></li>
                <li><a href="login.aspx" runat="server" id="login">Log In</a></li>
                <li><a href="Categories-page.aspx" id="items2">Shop</a></li>
                 <li><a href="Cart.aspx" id="items3"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="30" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                 <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                 </svg></a> </li>

            </ul>
        </div>
    </div>
</div>
        <div>

        </div>
            </div>
        <div id="Body">
        <div class="container">
            <div id="con-1">
               <div id="left-div"><br /><br />
                <h3>Product Categories</h3>
                  <input runat="server" id="search" type="text" style="width:150px;"   placeholder= " Search product.. "/><asp:Button ID="Button1" runat="server" style="width:70px;" Text="search" OnClick="Button1_Click" /> <br /><br /><br /><br />
                <div id="leftCard" runat="server"></div>
                   </div>
                <div class="middlediv" style="border-left: 1px solid #BBC6C8;
    height: 850px;
    position: absolute;
    left: 30%;
    margin-left: 35px;
    top: 49%;
"></div>
            <div id="right-div">
            <div id="rightCard" runat="server"></div>
                
           <%-- <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>

           

            </div>
         
            </div>
        </div><br /><br /><br /><br />
            </div>







        <div id="sale">
            <div class="container">
                <div id="container-sale" style="background-color:white; margin-top:50px;">
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

        <div id="service" style="background-image:url('images/service.PNG') ;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
        height: 228px;margin-bottom:100px;">
        </div>
   

        


    </form>
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
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

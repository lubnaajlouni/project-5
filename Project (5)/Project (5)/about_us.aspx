<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about_us.aspx.cs" Inherits="Project__5_.about_us" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link href="about_us.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css%22/%3E" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <style>
        .aboutImge {
            margin-top: 3rem;
        }

        .Navbar {
            width: 100%;
            /*padding: 10px;*/
            /* background-color: white;*/
        }

            .Navbar .both {
                display: flex;
                gap: 20px;
                align-items: center;
                justify-content: space-between;
                width: 90%;
                margin: 0 auto;
            }

                .Navbar .both i {
                    display: none;
                    color: white;
                }

                .Navbar .both .logo h1 {
                    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                    color: black;
                    letter-spacing: 10px;
                }

                .Navbar .both .nav ul {
                    display: flex;
                    gap: 80px;
                }

                    .Navbar .both .nav ul li a {
                        text-decoration: none;
                        color: #183153;
                        transition: 0.4s;
                        font-size: 20px;
                    }

        #items:hover {
            border-radius: 15px;
            font-size: 20px;
            color: #E61F57;
        }
        #login:hover {
    border-radius: 15px;
    font-size: 20px;
    color: #E61F57;
}

        @media (max-width:768px) {
            .Navbar .both .nav {
                display: none;
            }

            .Navbar .both i {
                display: block;
            }
        }
         @media (max-width:768px) {
            .Navbar .both .nav {
                display: none;
            }

            .Navbar .both i {
                display: block;
            }
        }
        @media (min-device-width: 0) and (max-device-width: 480px) 
        {
            .blueContant {
                margin-top: 3rem;
                margin-left: 1rem; 
        
            }
            .blue {
                height: 50rem;
            }

            .aboutImge {
                margin-top: 10rem;
            }
        }

        @media (min-device-width: 481px) and (max-device-width: 768px) 
        {
            .blueContant {
                margin-top: 1rem;
                margin-left: 1rem;
            }
            .blue {
                
                height: 32rem;
                
            }
            .aboutUsparagraph {
                font-size: 17px;
            }

        }
    </style>

</head>
<body>
    <!--<header class="header">
        <img class="logo" src="Models/pic/logo1.1.jpeg" alt="Alternate Text" />
        <nav class="nav-items">
            <a href="#">Home</a>
        </nav>
    </header>-->
    <!-- Navbar -->
    <div class="Navbar">
        <div class="both">
            <div class="logo">
                <div><img src="\images\logo6.png" style="height:100px;" /></div>
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

    <div class="aboutUsContainer">
        <div class="aboutUschild blue ">
            <div class="blueContant" style="margin-top: 5rem; margin-left: 7rem; text-align: start;">
<%--                <h2 class="aboutUsHead">Nice to meet you</h2>--%>

                <p class="aboutUsparagraph">
                   This online store was launched in 2022 and it is a store,<!--<br />-->
                    that sells medical tools that the patient and some medical staff<!--<br />-->
                    may need to meet their needs.We also strive to provide the latest<!--<br />-->
                    medical devices and tools that make life easier for the patient and<!--<br />-->
                    the medical staff.<!--<br />-->
                    Providing a tailored online account setup enables us to deliver an easy and <!--<br /-->>
                    reliable purchasing process that is centred around our customers and supported <!--<br />-->
                    by our outstanding level of service and expert knowledge.<!--<br />-->
                    Furthermore, as a trusted supplier we only partner with market<!--<br />-->
                    leading medical manufacturers with a reputation that your patients,<!--<br />-->
                    residents, nurses, carers and doctors can depend on.<!--<br />-->
                    <h2 class="aboutUsHead">You can also contact us from <a href="contactwebform.aspx">hear</a></h2>

                </p>

            </div>
            <div class="aboutImge"><img src="images/pic.jpg" alt="Alternate Text" /></div>
        </div>

    </div>
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




</body>
</html>

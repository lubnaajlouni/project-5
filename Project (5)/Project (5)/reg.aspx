<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="Project__5_.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/cd46a65f5c.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
       <!-- Section: Design Block -->
<section class="background-radial-gradient overflow-hidden">
  <style>
.row{margin-top:-4%;
   
}






 
      .btn btn-primary btn-block mb-4 {
         margin-left:70%;
      }
      .background-radial-gradient {
        
          background-image:url("/images/k.jpg") ;
          background-size:cover;
          background-repeat:no-repeat;
          height:100vh;
      }

    #radius-shape-1 {
      height: 220px;
      width: 220px;
      top: -60px;
      left: -130px;
     
      overflow: hidden;
    }
   
   
    .bg-glass {
      background-color: hsla(0, 0%, 100%, 0.9) !important;
      backdrop-filter: saturate(200%) blur(25px);
    }

    /* Navbar */
.Navbar {
    width: 100%;
    padding: 10px;

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

@media (max-width:768px) {
    .Navbar .both .nav {
        display: none;
    }

    .Navbar .both i {
        display: block;
    }
}


  </style>

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


  <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
    <div class="row gx-lg-5 align-items-center mb-5 ">
      <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: #748DA6;">
          WELCOME TO JOIN US <br />
          <span style="color: navy;"></span>
        </h1>
        
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0 position-relative" style="margin-top:-2%;">
        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong" ></div>
        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

        <div class="card bg-glass" >
          <div class="card-body px-4 py-5 px-md-5" >
            <form>
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline" >
                
                    <label class="form-label" for="form3Example1">First name</label>
                      <input type="text" id="FName" runat="server" class="form-control" />
                   
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                   
                    <label class="form-label" for="form3Example2">Last name</label>
                    <input type="text" id="LName" runat="server" class="form-control" />
                  </div>
                </div>
              </div>
                 <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                
                    <label class="form-label" for="form3Example1">Email</label>
                    <input type="text" id="email" runat="server" class="form-control" />
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                   
                    <label class="form-label" for="form3Example2">phone</label>
                    <input type="text" id="phone" runat="server" class="form-control" />
                  </div>
                </div>
              </div>

              <!-- Email input -->
              <div class="form-outline mb-4">
               
                <label class="form-label" for="form3Example3"> Address</label>
                <input type="text" id="adderss" runat="server" class="form-control" />
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                
                <label class="form-label" for="form3Example4">Password</label>
                  <input type="Password" id="Password" runat="server" class="form-control" />
              </div>

            
                
              <!-- Submit button -->
                <asp:Button ID="signUp" runat="server" class="btn btn-primary btn-block mb-4" Text="Sign up" OnClick="signUp_Click" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
       
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
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactwebform.aspx.cs" Inherits="Project__5_.contactwebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css%22/%3E" />
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <style> 
 body{
   margin:0;
      }
.contactContainer{
    display:flex;
    width:100%;
    height:40rem;
    
}
.leftSide{
    width:60%;
    background-color:#0B4A80;

}
.lefTextContain{
    width: 50%;
    margin-top: 5.5rem;
    margin-left: 9rem;
}
.paragraph{
    color:white;
    font-size:26px;
}

.rightSide{
   width:40%;
    display:flex;
    flex-wrap:wrap;
    justify-content:space-around;
    height:90%;
    margin-top:5rem;
    
   
}

.rightItem {
    width:90%;
    text-align:center;
        }
.hradecontact{
    color:white;
}
.contactInfo{
    font-size:large;
  font-weight: bolder;
}
/*/button/*/
.button-two {
  border-radius: 4px;
  background-color:#E6E6E6;
  border: none;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
}


.button-two span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button-two span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button-two:hover span {
  padding-right: 25px;
}

.button-two:hover span:after {
  opacity: 1;
  right: 0;
}
.bblue{
    color:#0B4A80;
}
/*/nav css/*/
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
@media  (min-device-width: 0) and (max-device-width: 480px) 
{
.lefTextContain {
    width: 70%;
    margin-top: 3.5rem;
    margin-left: 5rem;
}
.paragraph {
    font-size: 32px;
}
.hradecontact {
    font-size: 57px;
}
.bblue {
    font-size: 35px;
}
.rightSide {
    font-size: 35px;
}


}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
<div class="Navbar">
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
    <%--<br />--%>
       
        <div class="contactContainer">

            <div class="leftSide ">
                <div class="lefTextContain" >
                <h1 class="hradecontact">Contact Us</h1>
                    <br />
                    <br />
                    <br />
                <p class="paragraph">The customer's opinion is very important to us in order to increase trust between both of us,
                    so do not hesitate to communicate</p>
                <br />
                    <br />
                    <asp:Button CssClass="button-two" ID="Button1" runat="server" Text="Send Email" OnClick="Button1_Click" />
             </div>

            </div>
            <div class="rightSide ">
                <div class="rightItem"> <h2 class="bblue">Contact Info</h2></div>
                
               
                <div class="rightItem">
                    <span class="contactInfo bblue "> <i class="fa-sharp fa-solid fa-location-dot bblue"></i> Our Office</span>
                    <br />
                    <p class="bblue"> Amman,jordan street</p>
                </div>
                <div class="rightItem ">
                    
                    <span class="contactInfo bblue"><i class="fa-regular fa-clock bblue"></i> Open Office Hours</span>
                     <br />
                    <p class="bblue"> M-F: 8am – 6pm
                        <br />
                       S-S: 10am – 4pm
                    </p>

                </div>
                <div class="rightItem ">
                   
                    <span class="contactInfo bblue"><i class="fa-solid fa-phone bblue"></i>  Get in Touch</span>
                     <br />
                    <p class="bblue">+962 776-120376</p>

                </div>
               </div>

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
</body>
</html>
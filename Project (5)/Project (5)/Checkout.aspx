<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Project__5_.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link href="Footer.css" rel="stylesheet" />


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style>
        body {
    font-family: Arial;
    font-size: 17px;
    padding: 8px;
}

* {
    box-sizing: border-box;
}

/* Navbar */
.Navbar {
    width: 100%;
    padding: 10px;
    background-color: white;
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
                color: #0B4A80;
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

.row {
    display: -ms-flexbox; /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE10 */
    flex-wrap: wrap;
    margin: 0 -16px;
}

.col-25 {
    -ms-flex: 25%; /* IE10 */
    flex: 25%;
}

.col-50 {
    -ms-flex: 50%; /* IE10 */
    flex: 51%;
}

.col-75 {
    -ms-flex: 75%; /* IE10 */
    flex: 75%;
}

.col-25,
.col-50,
.col-75 {
    padding: 0 16px;
}

.container {
    padding: 5px 40px 15px 40px;
    border: 1px solid lightgrey;
    border-radius: 11px;
    width: 70%;
    height: 96vh;
    margin: 0 auto;
    box-shadow: 5px 5px 10px grey;
}
  h3 {
      text-align: center;
    margin-bottom: 40px;
    color:#0B4A80;
        }
input[type=text] {
    width: 100%;
    margin-bottom: 20px;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

label {
    margin-bottom: 10px;
    display: block;
}

.icon-container {
    margin-bottom: 20px;
    padding: 7px 0;
    font-size: 24px;
}
 .submit {
            float: right;
    padding: 10px 30px;
    border-radius: 10px;
    border: none;
    font-weight: bold;
    color: #0B4A80;
        background-color: white;
        border: #0B4A80  2px solid;
        transition:0.3s;

        }
  .submit:hover {
              transition:0.3s;
              transform:scale(108%);


.btn {
    background-color: #0B4A80;
    color: white;
    padding: 12px;
    margin: 10px 0;
    border: none;
    width: 100%;
    border-radius: 3px;
    cursor: pointer;
    font-size: 17px;
}

    .btn:hover {
        background-color: #45a049;
    }

a {
    color: #2196F3;
}

hr {
    border: 1px solid lightgrey;
}

span.price {
    float: right;
    color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
    .row {
        flex-direction: column-reverse;
    }

    .col-25 {
        margin-bottom: 20px;
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

        <!--CheckoutBox-->
     <div class="row">
  <div class="col-75">
    <div class="container" style="background-color:#E6E6E6;">
      <form action="/action_page.php">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname" style="color:#0B4A80;"><i class="fa fa-user" style="color:#0B4A80;"></i> Full Name</label>
            <input runat="server" type="text" id="fname" name="firstname" placeholder="Please Enter Your Full Name"/>
            <label for="email" style="color:#0B4A80;"><i class="fa fa-envelope"style="color:#0B4A80;"></i> Email</label>
            <input runat="server" type="text" id="email" name="email" placeholder="Please Enter Your Email"/>
            <label for="country" style="color:#0B4A80;"><i class="fa fa-institution"style="color:#0B4A80;"></i> Country</label>
            <input  runat="server" type="text" id="country" name="country" placeholder="Please Enter Your Country"/>

            <div class="row">
              <div class="col-50">
                <label for="state" style="color:#0B4A80;">City</label>
                <input runat="server" type="text" id="city" name="state" placeholder="Please Enter Your City "/>
              </div>
              <div class="col-50">
                <label for="zip" style="color:#0B4A80;">Zip</label>
                <input  runat="server" type="text" id="zip" name="zip" placeholder="Please Enter Your City Zip"/>
              </div>
                   <div class="col-50">
                  <label for="adr" style="color:#0B4A80;"><i class="fa fa-address-card-o" style="color:#0B4A80;"></i> Address</label>
                  <input runat="server" type="text" id="adr" name="address" placeholder="Please Enter Your Address"/>
            </div>
                </div>
          </div>
        </div>
       <%-- <label>
          <input type="checkbox" checked="checked" name="sameadr"/> Shipping address same as billing
        </label>--%>
          <asp:Button ID="Button1" CssClass="submit" runat="server" Text="Submit" OnClick="Button1_Click" />
      </form>
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
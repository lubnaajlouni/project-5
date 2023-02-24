<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project__5_.profile" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<link href=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" rel="stylesheet" />
<link href=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" />
<script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
<head runat="server">
    <title></title>
    <style>
        body {
            background: #0B4A80;
        }

        .form-control:focus {
            box-shadow: none;
            border-color: #BA68C8
        }

        .profile-button {
            background: rgb(99, 39, 120);
            box-shadow: none;
            border: none
        }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

        .back:hover {
            color: #682773;
            cursor: pointer
        }



        .add-experience:hover {
            background: #BA68C8;
            color: #fff;
            cursor: pointer;
            border: solid 1px #BA68C8
        }

        #userInfo {
            font-size: larger;
        }
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
     color: #183153;
     transition: 0.4s;
     font-size: 20px;
    }

#items:hover {
    border-radius: 15px;
    font-size: 20px;
    color: #E61F57;
}
#userimg{
   width: 300px;
   height: 300px;

}

        @media (max-width:768px) {
            .Navbar .both .nav {
                display: none;
            }

            .Navbar .both i {
                display: block;
            }
        }

 /*       @media only screen and (min-device-width:0px) and (max-device-width: 480px) 
        {
            #form1{
                padding-top:10%;
            }
            #userimg{
   width: 150px;
   height: 150px;

}
        }
        @media only screen and (min-device-width: 481px) and (max-device-width: 768px) 
        {
        }

*/

    </style>
</head>
<body>

    <header> 
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
    </header>

    <form id="form1" runat="server">
        <div class="container rounded bg-white mt-5 mb-5" id="cont">

            <div class="row">
                <div class="col-md-4 border-right" id="p">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                        <img src="images/profile.jpg" id="userimg">
                        <asp:Label ID="fn" runat="server"  class="font-weight-bold"></asp:Label>
                         <asp:Label ID="em" runat="server" class="text-black-50" ></asp:Label>

                      
                    </div>
                </div><br /><br /><br />
                <div class="col-md-8 border-right" id="pp">

                    <asp:Label ID="userInfo" runat="server">
                     <br /><br /> <h2> Personal Info</h2><br /><br />
                        <table class='table table-striped' runat="server">
                            <tr>
                                <th id="name" runat="server">Name :</th>
                            </tr>
                            <tr>
                                <th id="mail" runat="server">Email :</th>
                            </tr>
                            <tr>
                                <th id="phone" runat="server">Phone : </th>
                            </tr>
                            <tr>
                                <th id="add" runat="server">Address :</th>
                            </tr>
                        </table>
                  </asp:Label>
                   
                    <asp:Button ID="editProf" runat="server" class="btn btn-primary btn-lg" Text="Edit Profile" Style="margin-left: 23%;" OnClick="editProf_Click" />
                    
                    <asp:Button ID="UserOrders" runat="server" class="btn btn-success btn-lg" Text=" your orders" Style="margin-left: 20%;" OnClick="UserOrders_Click" />
              <br /> <br />
                </div>
                <br />
                <br />
                <br />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserOrders.aspx.cs" Inherits="Project__5_.UserOrders" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
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

@media (max-width:768px) {
    .Navbar .both .nav {
        display: none;
    }

    .Navbar .both i {
        display: block;
    }
    </style>
<body>
    <header> 
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
</div></header>

    <form id="form1" runat="server">
        <div>
            
            <main class="row" style="background-color:#E5E5E5;">
                <p class="survey"><h1 style="text-align:center;">Your Orders</h1><p/>
                    
               <div class="container-md">
                   <asp:Label ID="Orderlbl" runat="server" ></asp:Label>
               </div>
            </main>
        </div>
    
    </form>
</body>
</html>

        <script>
            const menu_toggle = document.querySelector('.menu-toggle');
            const sidebar = document.querySelector('.sidebar');

            menu_toggle.addEventListener('click', () => {
                menu_toggle.classList.toggle('is-active');
                sidebar.classList.toggle('is-active');
            });
        </script>
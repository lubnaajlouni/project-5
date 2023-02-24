<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_product.aspx.cs" Inherits="Project__5_.Admin_product" %>

<!DOCTYPE html>

<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <link rel="stylesheet" href="adminstyle.css"/>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
    <link href="bootstrap.min.css" rel="stylesheet"/>

</head>
<body>
    <!-- navbar start -->
        <nav id="navbar">
            <div>
            <img id="logo" src="images/logo6.png"/>
            </div>
                <div>   
                    <ul>
                        
                        <li>
                            <a class="navLinks" href="login.aspx">
                                Logout
                                </a>
                            </li>
                            <li>
                            <a class="navLinks" href="HomePage.aspx">
                                Home
                                </a>
                        </li>
                    </ul>
                </div>
        </nav>
    
        <!-- navbar end -->
        <!-- side bar start -->
        
        <div class="app">
            <div class="menu-toggle">
                <div class="hamburger">
                    <span></span>
                </div>
            </div>
    
            <aside class="sidebar">
                <p class="welcome">Welcome Admin !</p>
                
                   <div class="menu">
                <a href="Admin.aspx" class="menu-item ">Customer</a>
                <a href="Admin_product.aspx" class="menu-item is-active">Product</a>
                <a href="Admin_Category.aspx" class="menu-item ">category</a>
             
                <div>
                    <div> 
                </div>
                </div>

                 <br />
                 <br />
              
            </aside>
    
            <main class="maincontent" style="background-color:#E5E5E5;;">
                <p class="survey">Product</p>
                  <form id="form1" runat="server">
                      <asp:Button ID="AddProduct" runat="server" Text="Add Product" class="btn btn-success" OnClick="AddProduct_Click" />
  </form>
                <br />
                    
               <div> 
                   <asp:Label ID="table1" runat="server" ></asp:Label>
               </div>
            </main>
        </div>
    
        <script>
            const menu_toggle = document.querySelector('.menu-toggle');
            const sidebar = document.querySelector('.sidebar');

            menu_toggle.addEventListener('click', () => {
                menu_toggle.classList.toggle('is-active');
                sidebar.classList.toggle('is-active');
            });
        </script>
</body>
</html>

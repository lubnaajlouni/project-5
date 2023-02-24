<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCategory.aspx.cs" Inherits="Project__5_.DeleteCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: #F5F5F5;
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to bottom right, )
        }

        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
    <link href="bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Delete Category</h3>
                                <form runat="server">
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                           
                                            <div class="form-outline">
                                                <label type="text" id="Category_Name" runat="server" class="form-control form-control-lg" />
                                                <label class="form-label" for="Category_Name">Category Name</label>
                                            </div>

                                        </div>
                                       
                                    </div>
                                    
                                    <div class="mt-4 pt-2">
                                        <asp:Button ID="remove" runat="server" class="btn btn-danger btn-lg" Text="Remove" OnClick="remove_Click" />
                                        
                                        <asp:Button ID="cancel" runat="server" class="btn btn-primary btn-lg" Text="cancel" OnClick="cancel_Click" />
                                    </div>
                                </form>
                             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>

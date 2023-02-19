<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Assets/css/style.css" rel="stylesheet" />
    <title>Book Store</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <header>
           
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-light">
                
            <div class="container justify-content-betweenr">
                  <a class="navbar-brand" href="Default.aspx">Book Store</a>
                
                <div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                      <li class="nav-item text-info active">
                        <a class="nav-link text-info active" href="Default.aspx">Home</a>
                      </li>
                      <li class="nav-item text-white">
                        <a class="nav-link text-white" href="Products.aspx">Products</a>
                      </li>
                      <li class="nav-item text-white">
                        <a class="nav-link text-white" href="Cart.aspx">Cart</a>
                      </li>
                         <li class="nav-item text-info">
                                <a class="nav-link text-info" href="Login.aspx">Login</a>
                            </li>
                    </ul>
                     </div>
                  </div>
                </div>
             </nav>
              </header>

            <main>

                 <div class="jumbotron">
                  <img src="Assets/images/bookbanner.jpg" class="headerimg"/>
                </div>

            </main>
        </div>
    </form>
</body>
</html>

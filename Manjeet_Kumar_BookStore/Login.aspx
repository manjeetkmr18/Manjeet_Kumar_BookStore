<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" />
    <link href="Assets/css/style.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
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
                            <li class="nav-item text-white">
                                <a class="nav-link text-white" href="Default.aspx">Home</a>
                            </li>
                            <li class="nav-item  text-white">
                                <a class="nav-link" href="Products.aspx">Products</a>
                            </li>
                            <li class="nav-item text-info">
                                <a class="nav-link text-info" href="Cart.aspx">Cart</a>
                            </li>
                            <li class="nav-item text-info">
                                <a class="nav-link text-info active" href="Login.aspx">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="container p-5">


            <div>
                <div class="login-page bg-light">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 offset-lg-1">
                                <h3 class="mb-3">Login Now</h3>
                                <div class="bg-white shadow rounded">
                                    <div class="row">
                                        <div class="col-md-7 pe-0">
                                            <div class="form-left h-100 py-5 px-5">

                                                <form id="form1" runat="server" class="row g-4">
                                                    <div class="col-12">
                                                        <label>Username<span class="text-danger">*</span></label>
                                                        <div class="input-group">
                                                            <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
                                                            <input id="txtUserName" type="text" class="form-control" placeholder="Enter Username" />
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label>Password<span class="text-danger">*</span></label>
                                                        <div class="input-group">
                                                            <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>
                                                            <input id="txtPassword" type="password" class="form-control" placeholder="Enter Password" />
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary px-4 float-end mt-4" />
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-md-5 ps-0 d-none d-md-block">
                                            <div class="form-right h-100 bg-primary text-white text-center pt-5">
                                                <i class="bi bi-bootstrap"></i>
                                                <h2 class="fs-1">Welcome Back!!!</h2>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>

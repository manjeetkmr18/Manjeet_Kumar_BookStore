<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.3.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="~/Assets/css/style.css" rel="stylesheet" />
    <title>Book Store - Product Page</title>
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
                            <li class="nav-item text-info">
                                <a class="nav-link text-info active" href="Products.aspx">Products</a>
                            </li>
                            <li class="nav-item text-white">
                                <a class="nav-link text-white" href="Cart.aspx">Cart</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="container p-5">
            <form id="form1" runat="server" class="form-horizontal">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <div class="row">
                                <label class="col-sm-5">Please select a product:</label>
                                <div class="col-sm-6">
                                    <asp:DropDownList ID="DDLproducts" runat="server">
                                        <asp:ListItem>---Select---</asp:ListItem>
                                        <asp:ListItem Value="1">ASP.NET Core 2.0</asp:ListItem>
                                        <asp:ListItem Value="2">ASP.NET Core 2.1</asp:ListItem>
                                        <asp:ListItem Value="3">ASP.NET Core 2.2</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <h4>
                                    <asp:Label ID="lblName" runat="server" class="lblName">
                                        ASP.NET Core 2.0
                                    </asp:Label>
                                </h4>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblShortDescription" runat="server" class="lblShortDescription">
                                    by Joel Murach (Author), Mary Delamater (Author)
                                </asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-8">
                                <asp:Label ID="lblLongDescription" runat="server" class="lblLongDescription">
                                    This 2nd Edition of Murach's ASP.NET Core MVC does a better job than ever of delivering the skills you need to develop websites using the MVC (Model-View-Controller) pattern with ASP.NET Core. If you know the basics of C#, you'll quickly learn to code the way today's top web professionals do. Each section features clear, beginner-friendly examples and easy-to-understand explanations that walk you through crucial skills, best practices, and helpful tips.
                                </asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblUnitPrice" runat="server" class="font-weight-bold lblUnitPrice">
                                    $150.00
                                </asp:Label>
                            </div>
                        </div>

                        <div class="row mt-5">

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label class="col-sm-1 font-weight-bold">Quantity:</label>
                                        </div>
                                        <div class="col-sm-4" id="rvQuantity">
                                            <asp:TextBox ID="txtQuantity" runat="server" class="form-control" ValidateRequestMode="Enabled" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-5">
                                            <asp:RequiredFieldValidator ID="rfvQuanity" runat="server" ErrorMessage="Quantity is required" ControlToValidate="txtQuantity" CssClass="text-danger"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="rvQuanity" runat="server" ErrorMessage="Quantity must be between 1 to 100" ControlToValidate ="txtQuantity" MaximumValue="100"></asp:RangeValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mt-4">
                                    <div class="row">
                                        <div class="col-sm-12">

                                            <asp:Button ID="btnAdd" runat="server" Text="Add To Cart" class="btn btn-lg btn-primary disabled" />
                                            <asp:Button ID="bnnGo" runat="server" Text="Go To Cart" class="btn btn-lg btn-success" />

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4">

                        <img src="Assets/images/book.jpg" class="product-img" />

                    </div>
                </div>
            </form>
        </div>
    </main>
</body>
</html>

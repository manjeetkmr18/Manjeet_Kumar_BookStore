<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Assets/css/style.css" rel="stylesheet" />
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
        <div class="container">
            <form id="form1" runat="server" class="form-horizontal">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label class="col-sm-5">Please select a product:</label>
                            <div class="col-sm-6">
                                <asp:DropDownList ID="DDLproducts" runat="server">
                                    <asp:ListItem>---Select---</asp:ListItem>
                                    <asp:ListItem Value="1">ASP.NET Core 2.0</asp:ListItem>
                                    <asp:ListItem Value="2">ASP.NET Core 2.1</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>

                        <div class="form-group">
                            <div class="col-sm-12">
                                <h4>
                                    <asp:Label ID="lblName" runat="server"></asp:Label>
                                </h4>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblShortDescription" runat="server">
                                </asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblLongDescription" runat="server">
                                </asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Label ID="lblUnitPrice" runat="server">
                                </asp:Label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <%-- row 2 --%>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label class="col-sm-1">Quantity:</label>
                            <div class="col-sm-3">
               
                            </div>
                            <div class="col-sm-8">
                           
                          
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <%-- end of row 2 --%>
            </form>
        </div>
    </main>
</body>
</html>

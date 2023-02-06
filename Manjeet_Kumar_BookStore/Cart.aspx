<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="~/Assets/css/style.css" rel="stylesheet" />
    <title>Book Store - Cart Page</title>
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
                                <a class="nav-link text-info active" href="Cart.aspx">Cart</a>
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
                <div>
                    <div class="row">
          
                        <div class="col-sm-12">
                            <h1>Your shopping cart</h1>
                        </div>
                        <div class="col-sm-6">
                 
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:ListBox ID="lstCart"
                                        runat="server" class="form-control"></asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <%-- cart edit buttons column --%>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:Button ID="btnRemove"
                                        runat="server" Text="Remove Item"
                                        class="btn btn-secondary" />
                                </div>
                                <div class="col-sm-12">
                                    <asp:Button ID="btnEmpty"
                                        runat="server" Text="Empty Cart"
                                        class="btn btn-secondary mt-3" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <%-- end of row 1 --%>
                    <div class="row">
                        <%-- row 2 --%>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <%-- message label --%>
                                <asp:Label ID="lblMessage" runat="server"
                                    EnableViewState="False"
                                    class="text-info col-sm-12"></asp:Label>
                            </div>
                            <div class="form-group">
                                <%-- buttons --%>
                                <div class="col-sm-12">
                                    <asp:Button ID="btnContinue" runat="server"
                                        PostBackUrl="~/Prducts.aspx" Text="Continue Shopping"
                                        class="btn btn-secondary m-3" />
                                    <asp:Button ID="btnCheckOut" runat="server"
                                        Text="Check Out"
                                        class="btn btn-secondary m-3" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </form>
        </div>
    </main>
</body>
</html>

<%@ Page Title="Book Store - Products" Language="C#"  MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Products" %>

   <asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                <div class="row">
                    <div class="col-sm-8">
                        <div class="row">
                        <asp:Label ID="lblUSerName" runat="server" Text="Label" CssClass="text-bg-info"></asp:Label>
                        </div>
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
                                            <asp:RequiredFieldValidator ID="rfvQuanity" runat="server" ErrorMessage="Quantity is required" ControlToValidate="txtQuantity" CssClass="text-decoration-none"></asp:RequiredFieldValidator>
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
      </asp:Content>
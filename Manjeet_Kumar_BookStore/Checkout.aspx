<%@ Page Title="Checkout-BookStore" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="checkout-page bg-light">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <h2 class="mb-3 text-center">Check Out Form</h2>
                    <h3 class="mb-3">Contact Information</h3>

                    <div class="form-group row p-3">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="inputEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row p-3">
                        <label for="reenterEmail" class="col-sm-2 col-form-label">Re-Enter Email</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="reenterEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row p-3">
                        <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="firstName" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row p-3">
                        <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="lastName" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                        </div>
                    </div>


                    <div class="form-group row p-3">
                        <label for="phoneNumber" class="col-sm-2 col-form-label">Phone Number</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="phoneNumber" CssClass="form-control" runat="server" placeholder="Phone Number"></asp:TextBox>
                        </div>
                    </div>

                    <h3 class="mb-3">Billing Address</h3>

                    <div class="form-group row p-3">
                        <label for="inputAddress" class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="inputAddress" CssClass="form-control" runat="server" placeholder="1234 Main St"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group row p-3">
                        <div class="form-group col-md-6">
                            <label for="inputCity">City</label>
                             <asp:TextBox ID="inputCity" CssClass="form-control" runat="server" placeholder="City"></asp:TextBox>   
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">State</label>
                            <select id="inputState" class="form-control">
                                <option selected>Ontario</option>
                                <option>Quebec</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputZip">Zip</label>
                            <input type="text" class="form-control" id="inputZip">
                        </div>
                    </div>

                    <h3 class="mb-3">Optional Data</h3>

                    <div class="form-group">
                        <label class="col col-form-label">Please Let Us Know about</label>

                        <div>
                            <input class="form-check-input" type="checkbox" value="" id="newProducts">
                            <label class="form-check-label" for="newProducts">
                                New Products
                            </label>

                            <input class="form-check-input" type="checkbox" value="" id="newEditions">
                            <label class="form-check-label" for="newEditions">
                                New Editions
                            </label>
                            <input class="form-check-input" type="checkbox" value="" id="newProducts">
                            <label class="form-check-label" for="newProducts">
                                New Products
                            </label>

                            <input class="form-check-input" type="checkbox" value="" id="newEditions">
                            <label class="form-check-label" for="newEditions">
                                New Editions
                            </label>
                        </div>

                    </div>


                    <div class="form-group">
                        <label class="col col-form-label">Please contact me via:</label>

                        <div>
                            <input class="form-check-input" type="checkbox" value="" id="twitter">
                            <label class="form-check-label" for="twitter">
                                Twitter
                            </label>

                            <input class="form-check-input" type="checkbox" value="" id="facebook">
                            <label class="form-check-label" for="facebook">
                                Facebook
                            </label>
                            <input class="form-check-input" type="checkbox" value="" id="textMessage">
                            <label class="form-check-label" for="textMessage">
                                Text Message
                            </label>

                            <input class="form-check-input" type="checkbox" value="" id="emailoption">
                            <label class="form-check-label" for="emailoption">
                                Email
                            </label>
                        </div>

                    </div>

                    <div class="p-3 justify-content-center ">
                        <button type="button" class="btn btn-primary btn-lg">Check Out</button>
                        <button type="button" class="btn btn-secondary btn-lg">Cancel Order</button>
                        <asp:HyperLink ID="continueShopping" runat="server" NavigateUrl="~/Products.aspx">Continue Shopping</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

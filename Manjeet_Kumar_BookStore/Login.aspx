<%@ Page Title="Book Store - Login" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Login" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <div>
                <div class="login-page bg-light">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-10 offset-lg-1">
                                <h3 class="mb-3">Login Now</h3>
                                <div class="bg-white shadow rounded">
                          
                                    <div class="row">
                                        <div class="col-md-7 pe-0">
                                            <div class="form-left h-100 py-5 px-5">

                                                    <div class="col-12">
                                                        <label>Username<span class="text-danger">*</span></label>
                                                        <div class="input-group">
                                                            <div class="input-group-text">
                                                            <i class="bi bi-person-fill"></i></div>
                                                            <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First Name" ValidateRequestMode="Enabled" TextMode="SingleLine"></asp:TextBox>
                                                             <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="First Name is Required" ControlToValidate="txtFirstName" CssClass="text-decoration-none" ForeColor="Red"></asp:RequiredFieldValidator>

                                                            </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label>Last Name<span class="text-danger">*</span></label>
                                                        <div class="input-group">
                                                            <div class="input-group-text">
                                                                <i class="bi bi-lock-fill"></i></div>
                                                             <asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last Name" ValidateRequestMode="Enabled" TextMode="SingleLine"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtLastName" CssClass="text-decoration-none" ForeColor="Red"></asp:RequiredFieldValidator>

                                                            </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary px-4 float-end mt-4" OnClick="btnLogin_Click" />
                                                    </div>
                                               
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
    
   </asp:Content>

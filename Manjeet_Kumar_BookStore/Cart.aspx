<%@ Page Title="Book Store - Cart Page" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Cart" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

   </asp:Content>
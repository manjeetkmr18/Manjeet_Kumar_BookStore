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
                                    <asp:SqlDataSource ID="bookstoredatasource" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:manjeet_bookstoreConnectionString %>"
                                    SelectCommand="SELECT [Id], [BookName], [Author ] AS Author_, [genre_id], [publisher ] AS publisher_, [published_date ] AS published_date_, [price], [description] FROM [Books]"> </asp:SqlDataSource>
                                    <asp:DropDownList ID="DDLproducts" runat="server" DataSourceID="bookstoredatasource" DataTextField="BookName" DataValueField="Id" AutoPostBack="True" CssClass="product-dropdown"
                                         Width="100%"
                                        ></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                         ConnectionString="<%$ ConnectionStrings:manjeet_bookstoreConnectionString %>"
                            SelectCommand="SELECT b.[Id], b.[BookName], b.[Author] AS Author_, b.[genre_id], g.[Name], 
       b.[publisher] AS publisher_, b.[published_date] AS published_date_, b.[price], b.[description] 
            FROM [Books] b
            JOIN [genre] g ON b.[genre_id] = g.[Id]
            WHERE (b.[Id] = @id)
            ">
                             <SelectParameters>
                                  <asp:ControlParameter ControlID="DDLproducts" Name="id"  PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>

                            </asp:SqlDataSource>

                      <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" ShowFooter="False">
                        <ItemTemplate>
                          
                            <div class="form-group">
                            <div class="col-sm-12">
                                <h4>
                                   <asp:Label ID="Label1" runat="server" CssClass="col xs-4" Text='<%# Eval("BookName") %>'></asp:Label>
                                </h4>
                            </div>
                        </div>
                           
                         <div class="form-group">
                            <div class="col-sm-12">
                                <%-- Concatenate with static string --%>
                                <asp:Literal ID="Literal1" runat="server" Text="By " />
                                <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Author_") %>' />
                            </div>
                        </div>

                          <div class="form-group">
                            <div class="col-sm-12">
                                <%-- Concatenate with static string --%>
                                <asp:Literal ID="Literal3" runat="server" Text="Genre :  " />
                                <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Name") %>' />
                            </div>
                        </div>

                           <div class="form-group">
                            <div class="col-sm-8">
                             <asp:Label ID="lblLongDescription" runat="server" CssClass="lblLongDescription" Text='<%# Eval("description") %>'> </asp:Label>
                            </div>
                        </div>

                            <div class="form-group">
                            <div class="col-sm-12">
                    
                            <asp:Label ID="litTotalPrice" runat="server" Text="Total Price: " />
                            <asp:Label ID="litFinalPrice" runat="server" CssClass="font-weight-bold lblUnitPrice" Text='<%# "$" + Eval("price") %>' />
                            </div>
                        </div>

                        </ItemTemplate>
               
                    </asp:DataList>

                        <div class="row mt-5">

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <label class="font-weight-bold">Quantity:</label>
                                        </div>
                                        <div class="col-sm-4" id="rvQuantity">
                                            <asp:TextBox ID="txtQuantity" runat="server" class="form-control" ValidateRequestMode="Enabled" TextMode="Number"></asp:TextBox>
                                        </div>
                                      
                                    </div>
                                        <div class="col">
                                            <asp:RequiredFieldValidator ID="rfvQuanity" runat="server" ErrorMessage="Quantity is required" ControlToValidate="txtQuantity" CssClass="text-decoration-none"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="rvQuanity" runat="server" ErrorMessage="Quantity must be between 1 to 100" ControlToValidate ="txtQuantity" MaximumValue="100"></asp:RangeValidator>
                                        </div>
                                </div>
                                <div class="form-group mt-4">
                                    <div class="row">
                                        <div class="col-sm-12">

                                            <asp:Button ID="btnAdd" runat="server" Text="Add To Cart" class="btn btn-lg btn-primary" />
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
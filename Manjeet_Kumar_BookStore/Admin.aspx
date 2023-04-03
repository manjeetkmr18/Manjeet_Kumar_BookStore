<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Manjeet_Kumar_BookStore.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                    <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <div class="row">
                                <label class="col-sm-5">Please select a product:</label>
                                <div class="col-sm-6">
                                    <asp:SqlDataSource ID="bookstoredatasource" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:manjeet_bookstoreConnectionString %>"
                                    SelectCommand="SELECT [Id], [Name] FROM [Genre]"> </asp:SqlDataSource>
                                    <asp:DropDownList ID="DDLgenre" runat="server" DataSourceID="bookstoredatasource" DataTextField="Name" DataValueField="Id" AutoPostBack="True" CssClass="product-dropdown"
                                         Width="100%"
                                        ></asp:DropDownList>
                                </div>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:manjeet_bookstoreConnectionString %>"
                                SelectCommand="SELECT * FROM Books WHERE ([genre_id] = @id) ">
                                 <SelectParameters>
                                  <asp:ControlParameter ControlID="DDLgenre" Name="id"  PropertyName="SelectedValue" Type="Int32" DefaultValue="1" />
                            </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:GridView ID="BooksGrid" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Solid" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="col-md-12">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                                    <asp:BoundField DataField="Author " HeaderText="Author " SortExpression="Author " />
                                    <asp:BoundField DataField="genre_id" HeaderText="genre_id" SortExpression="genre_id" />
                                    <asp:BoundField DataField="published_date " HeaderText="published_date " SortExpression="published_date " />
                                    <asp:BoundField DataField="publisher " HeaderText="publisher " SortExpression="publisher " />
                                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                </Columns>
                            </asp:GridView>

                        </div>
                        </div>
                        </div>

    </asp:Content>

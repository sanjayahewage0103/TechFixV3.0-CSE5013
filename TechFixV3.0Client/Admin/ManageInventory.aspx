<%@ Page Title="Manage Inventory" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="ManageInventory.aspx.cs" Inherits="TechFixV3._0Client.Admin.ManageInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="manage-inventory-container">
        <h2 class="page-title">Manage Inventory</h2>
        
        <div class="inventory-grid">
            <!-- Left Column -->
            <div class="left-column">
                <!-- Supplier Section -->
                <div class="section supplier-section">
                    <h3 class="section-title">Suppliers</h3>
                    <div class="table-container">
                        <asp:GridView ID="SupplierGridView" runat="server" AutoGenerateColumns="False" CssClass="table">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Supplier ID" />
                                <asp:TemplateField HeaderText="Supplier Name">
                                    <ItemTemplate>
                                        <%# Eval("Name") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Contact Number">
                                    <ItemTemplate>
                                        <%# Eval("ContactNumber") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <%# Eval("Email") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

                <!-- Add New Item Section -->
                <div class="section add-item-section">
                    <h3 class="section-title">Add New Inventory Item</h3>
                    <div class="form-content">
                        <div class="form-group">
                            <asp:Label ID="SupplierLabel" runat="server" Text="Select Supplier:" CssClass="label" AssociatedControlID="SupplierDropDown" />
                            <asp:DropDownList ID="SupplierDropDown" runat="server" CssClass="input-field" AutoPostBack="true" OnSelectedIndexChanged="SupplierDropDown_SelectedIndexChanged">
                                <asp:ListItem Text="Select Supplier" Value="" />
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="ProductLabel" runat="server" Text="Select Product:" CssClass="label" AssociatedControlID="NewItemDropDown" />
                            <asp:DropDownList ID="NewItemDropDown" runat="server" CssClass="input-field" AutoPostBack="true" OnSelectedIndexChanged="NewItemDropDown_SelectedIndexChanged">
                                <asp:ListItem Text="Select Product" Value="" />
                            </asp:DropDownList>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <asp:Label ID="NewQuantityLabel" runat="server" Text="Quantity:" CssClass="label" AssociatedControlID="NewQuantityTextBox" />
                                <asp:TextBox ID="NewQuantityTextBox" runat="server" CssClass="input-field" />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="NewPriceLabel" runat="server" Text="Price:" CssClass="label" AssociatedControlID="NewPriceTextBox" />
                                <asp:TextBox ID="NewPriceTextBox" runat="server" CssClass="input-field" ReadOnly="true" />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="NewDiscountLabel" runat="server" Text="Discount:" CssClass="label" AssociatedControlID="NewDiscountTextBox" />
                                <asp:TextBox ID="NewDiscountTextBox" runat="server" CssClass="input-field" ReadOnly="true" />
                            </div>
                        </div>

                        <div class="button-container">
                            <asp:Button ID="AddItemButton" runat="server" Text="Add Item" CssClass="submit-button" OnClick="AddItemButton_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Column -->
            <div class="right-column">
                <!-- Supplier Products Section -->
                <div class="section supplier-products-section">
                    <h3 class="section-title">Products</h3>
                    <div class="table-container">
                        <asp:GridView ID="SupplierProductsGridView" runat="server" AutoGenerateColumns="False" CssClass="table">
                            <Columns>
                                <asp:BoundField DataField="ProductId" HeaderText="Product ID" />
                                <asp:BoundField DataField="SupplierId" HeaderText="Supplier ID" />
                                <asp:TemplateField HeaderText="Product Name">
                                    <ItemTemplate>
                                        <%# Eval("ItemName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Quantity">
                                    <ItemTemplate>
                                        <%# Eval("Quantity") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price (LKR)">
                                    <ItemTemplate>
                                        <%# Eval("Price") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Discount">
                                    <ItemTemplate>
                                        <%# Eval("Discount") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

                <!-- Inventory Section -->
                <div class="section inventory-section">
                    <h3 class="section-title">Inventory</h3>
                    <div class="table-container">
                        <asp:GridView ID="InventoryGridView" runat="server" AutoGenerateColumns="False" CssClass="table"
                            OnRowDeleting="InventoryGridView_RowDeleting" DataKeyNames="ItemId">
                            <Columns>
                                <asp:BoundField DataField="ItemId" HeaderText="Item ID" />
                                <asp:TemplateField HeaderText="Item Name">
                                    <ItemTemplate>
                                        <%# Eval("ItemName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Quantity">
                                    <ItemTemplate>
                                        <%# Eval("Quantity") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price (LKR)">
                                    <ItemTemplate>
                                        <%# Eval("Price") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Discount">
                                    <ItemTemplate>
                                        <%# Eval("Discount") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Supplier ID">
                                    <ItemTemplate>
                                        <%# Eval("SupplierId") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
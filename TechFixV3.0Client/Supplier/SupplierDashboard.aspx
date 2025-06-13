<%@ Page Language="C#" MasterPageFile="~/Supplier/SupplierMaster.master" AutoEventWireup="true" CodeBehind="SupplierDashboard.aspx.cs" Inherits="TechFixV3._0Client.Supplier.SupplierDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-container">
        <h2><i class="fas fa-tachometer-alt"></i> Welcome to the Supplier Dashboard</h2>
        <p>This is the main supplier dashboard where you can manage your orders and view inventory status.</p>
        <div class="supplier-sections">
            <div class="section">
                <h3><i class="fas fa-store"></i> Product Store</h3>
                <p>Browse and manage products available in the store.</p>
                <a href="ProductStore.aspx" class="btn">Go to Product Store</a>
            </div>
            <div class="section">
                <h3><i class="fas fa-clipboard-list"></i> Order Management</h3>
                <p>Track and manage all your orders efficiently.</p>
                <a href="OrderManagement.aspx" class="btn">Go to Order Management</a>
            </div>
            <div class="section">
                <h3><i class="fas fa-chart-line"></i> Sales Report</h3>
                <p>View and analyze your sales reports.</p>
                <a href="SalesReport.aspx" class="btn">Go to Sales Report</a>
            </div>
        </div>
    </div>
</asp:Content>
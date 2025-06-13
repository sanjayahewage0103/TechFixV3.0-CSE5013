<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TechFixV3._0Client.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - TechFix</title>
    <link href="~/Content/login.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-content">
                <!-- Login Form -->
                <div class="login-form">
                    <h2><i class="fas fa-user-lock"></i> Login to TechFix</h2>
                    <asp:Label ID="MessageLabel" runat="server" Text="" CssClass="error-message" />
                    <div class="input-group">
                        <asp:Label ID="UsernameLabel" runat="server" Text="Username:" AssociatedControlID="UsernameTextBox" />
                        <asp:TextBox ID="UsernameTextBox" runat="server" CssClass="input-field" placeholder="Enter your username"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <asp:Label ID="PasswordLabel" runat="server" Text="Password:" AssociatedControlID="PasswordTextBox" />
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="input-field" placeholder="Enter your password"></asp:TextBox>
                    </div>
                    <div class="login-button">
                        <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="submit-button" OnClick="LoginButton_Click" />
                    </div>
                </div>
            </div>
            <!-- Information about TechFix -->
            <div class="techfix-info">
                <h1>Welcome to TechFix</h1>
                <p>We specialize in providing innovative technical solutions that empower businesses. By seamlessly connecting suppliers and administrators, we enhance operational efficiency and deliver a trustworthy experience for every user. Our commitment to excellence ensures that organizations can navigate their challenges with confidence and ease.</p>
                <div class="features">
                    <div class="feature"><i class="fas fa-cogs"></i> Efficient Solutions</div>
                    <div class="feature"><i class="fas fa-handshake"></i> Reliable Partnerships</div>
                    <div class="feature"><i class="fas fa-chart-line"></i> Business Growth</div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
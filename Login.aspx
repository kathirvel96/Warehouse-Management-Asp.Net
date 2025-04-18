<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAREHOUSE_MANAGEMENT_SYSTEM.Login" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="d-flex align-items-center justify-content-center" style="height: 100vh;">
    <form id="form1" runat="server" class="p-4 border rounded bg-light" style="width: 300px;">
        <h4 class="mb-3 text-center">Login</h4>
        <div class="mb-3">
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Placeholder="Username" />
        </div>
        <div class="mb-3">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Password" />
        </div>
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger d-block mt-2"></asp:Label>
    </form>
</body>
</html>

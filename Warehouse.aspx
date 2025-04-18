<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Warehouse.aspx.cs" Inherits="WAREHOUSE_MANAGEMENT_SYSTEM.Warehouse" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Warehouse Inventory</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <h2 class="mb-4">Warehouse Inventory</h2>
        <div class="d-flex justify-content-end mb-3">
    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="btnLogout_Click" />
</div>
        <div class="row mb-3">
            <div class="col">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Product Name"></asp:TextBox>
            </div>
            <div class="col">
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" Placeholder="Quantity"></asp:TextBox>
            </div>
            <div class="col">
                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" Placeholder="Location"></asp:TextBox>
            </div>
            <div class="col-auto">
                <asp:Button ID="btnAdd" runat="server" Text="Add Product" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
            </div>
        </div>

       <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="ProductID"
    OnRowDataBound="GridView1_RowDataBound"
    OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
    OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">

            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btnExport" runat="server" Text="Export to Excel" 
    CssClass="btn btn-success mb-3" OnClick="btnExport_Click" />

    </form>
</body>
</html>


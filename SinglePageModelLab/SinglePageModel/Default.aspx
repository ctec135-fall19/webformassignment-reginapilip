<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SinglePageModel.Default" %>
<%@ Import Namespace="AutoLotDAL.Models" %>
<%@ Import Namespace="AutoLotDAL.DataOperations" %> 

<!DOCTYPE html>

<script runat="server">
    public IEnumerable<AutoLotDAL.Models.Car> GetData()
    {
        return new InventoryDAL().GetAllInventory();
    }

    public IEnumerable<AutoLotDAL.Models.Car> GetCarID()
    {
        // something here
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="carsGridView" runat="server" ItemType="AutoLotDAL.Models.Car"
                SelectMethod="GetData">
            </asp:GridView>
            <br />
        </div>
        <div>
            <p>Enter Car ID:</p>
            <asp:TextBox ID="ID_TextBox" ItemType="AutoLotDAL.Models.Car" runat="server" Text="1"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Display Name" OnClick="Button1_Click" />
            <br />
            <asp:Label ForeColor="Violet" ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>

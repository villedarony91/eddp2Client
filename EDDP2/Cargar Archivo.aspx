<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cargar Archivo.aspx.cs" Inherits="EDDP2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 309px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 10px; top: 34px; position: absolute; height: 242px; width: 1096px">
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 574px; top: 79px; position: absolute; width: 178px;"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 579px; top: 130px; position: absolute; width: 174px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 594px; top: 189px; position: absolute; width: 156px;" Text="Button" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        </asp:Panel>
    </form>
</body>
</html>

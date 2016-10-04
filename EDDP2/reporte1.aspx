<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporte1.aspx.cs" Inherits="EDDP2.reporte1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML>
<html>
<title>Admin Console</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato" />
<style>
    html, body, h1, h2, h3, h4, h5 {
        font-family: "Lato", sans-serif;
    }

    .mySlides {
        display: none;
    }

    .w3-left, .w3-right, .w3-tag {
        cursor: pointer;
    }

    .w3-tag {
        height: 15px;
        width: 15px;
        padding: 0;
        margin-top: 6px;
    }
</style>
<body>

    <!-- Navbar -->
    <ul class="w3-navbar w3-left-align w3-light-grey w3-center w3-top w3-large">
        <li class="w3-left" style="width: 20% !important"><a href="Admin.aspx" class="w3-text-teal">Home</a></li>
        <li class="w3-left" style="width: 20% !important"><a href="reporte1.aspx">Reporte 1</a></li>
        <li class="w3-left" style="width: 20% !important"><a href="report2.aspx">Reporte 2</a></li>
        <li class="w3-left" style="width: 20% !important"><a href="report3.aspx">Reporte 3</a></li>
    </ul>

    <!-- Content -->
    <div class="w3-content w3-container" style="max-width: 1100px; margin-top: 80px; margin-bottom: 80px">
        <div class="w3-section">
            <h1><b>Reporte 1</b></h1>
            <br />
            <form id="form1" runat="server">
                <div>
                    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 38px; top: 162px; position: absolute; height: auto; width: auto;">
                        <asp:Label ID="label1" Text="Fecha inicial" runat="server" Style="z-index: 1; left: 31px; top: 80px; position: absolute; width: 105px;"></asp:Label>
                        <asp:TextBox ID="TextFechaInicial" runat="server" Style="z-index: 2; left: 139px; top: 80px; position: absolute; width: 178px;"></asp:TextBox>
                        <asp:Label ID="label2" Text="Fecha Final" runat="server" Style="z-index: 3; left: 31px; top: 127px; position: absolute; width: 102px; height: 22px;"></asp:Label>
                        <asp:TextBox ID="TextFechaFinal" runat="server" Style="z-index: 4; left: 141px; top: 121px; position: absolute; width: 174px"></asp:TextBox>
                        <asp:CheckBox ID="CheckBoxFecha" runat="server" Text="Por rango de fecha" Style="z-index: 6; left: 140px; top: 38px; position: absolute; width: 154px;" />

                        <asp:CheckBox ID="CheckBoxUsuario" runat="server" Text="Por usuario" Style="z-index: 6; left: 482px; top: 38px; position: absolute; width: 154px;" />
                        <asp:Label ID="label3" Text="Usuario" runat="server" Style="z-index: 1; left: 401px; top: 81px; position: absolute; width: 105px;"></asp:Label>
                        <asp:TextBox ID="Textusuario" runat="server" Style="z-index: 2; left: 483px; top: 81px; position: absolute; width: 178px;"></asp:TextBox>

                        <asp:CheckBox ID="CheckBoxValor" runat="server" Text="Por valor" Style="z-index: 6; left: 828px; top: 39px; position: absolute; width: 154px;" />
                        <asp:Label ID="label4" Text="Valor" runat="server" Style="z-index: 1; left: 759px; top: 81px; position: absolute; width: 55px;"></asp:Label>
                        <asp:TextBox ID="TextValor" runat="server" Style="z-index: 2; left: 827px; top: 81px; position: absolute; width: 178px;"></asp:TextBox>

                        <asp:Button ID="Button1" runat="server" Text="Generar reporte" Style="z-index: 2; left: 450px; top: 185px; position: absolute; width: 178px;" OnClick="Button1_Click" />

                        <asp:GridView ID="GridView1" runat="server" Style="z-index: 6; left: 399px; top: 232px; position: absolute; width: auto;" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>

                    </asp:Panel>
                </div>

            </form>

        </div>

    </div>
</body>
</html>

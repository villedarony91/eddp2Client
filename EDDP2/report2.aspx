<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report2.aspx.cs" Inherits="EDDP2.report2" %>


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
    <div class="w3-content w3-container" style="max-width:1100px;margin-top:80px;margin-bottom:80px">
        <div class="w3-section">
            <h1><b>Reporte 2</b></h1>
            <br/>
            Reporte de Productos mas vendidos
            <form id="form1" runat="server">
                <div>
                        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 38px; top: 162px; position: absolute; height: auto; width: auto;">
                        <asp:Label ID="label1" Text="Fecha inicial" runat="server" style="z-index: 1; left: 377px; top: 90px; position: absolute; width: 105px; height: 20px;"></asp:Label>
                        <asp:Label ID="label2" Text="Fecha Final" runat="server" style="z-index: 3; left: 376px; top: 130px; position: absolute; width: 102px; height: 20px;"></asp:Label>
                        <asp:TextBox ID="TextFechaInicial" runat="server" style="z-index: 4; left: 512px; top: 87px; position: absolute; width: 183px; height: 22px;"></asp:TextBox>
                        <asp:TextBox ID="TextFechaFinal" runat="server" style="z-index: 4; left: 513px; top: 127px; position: absolute; width: 183px; height: 22px;"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Generar reporte" style="z-index: 2; left: 450px; top: 185px; position: absolute; width: 178px;" OnClick="Button1_Click"  />

                        <asp:GridView ID="GridView1" runat="server" style="z-index: 6; left: 399px; top: 232px; position: absolute; width: auto;" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" >

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



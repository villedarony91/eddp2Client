﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="EDDP2.Carrito" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>EDD Proyecto 2</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>

<body>
    <form id="form1" runat="server">
    <div id="topheader"></div>
    <div id="main_container">


        <div id="subheader">
            <div class="logo"><a href="home.aspx"><img src="images/logo.gif" width="190" height="76" border="0" alt="" title="" /></a></div>
        </div>

        <div id="menu">
            <ul>
                =<li><a href="home.aspx" title="">Home</a></li>
                <li class="separator"></li>
                <li><a href="WhishList.aspx">Whishlist</a></li>
                <li class="separator"></li>
                <li><a href ="Carrito.aspx"> Carrito</a>  </li>
                <li class="separator"></li>
                <li><a href="showUserGraph.aspx">Ver graficas</a></li>
                <li>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 172px; top: 2px; position: relative; height: 29px; width: 93px; margin-bottom: 0px" Text="Comprar" />
                </li>
                <li></li>
                <li></li>
                <li></li>
                <li>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="position: relative; top: 2px; left: 186px; height: 31px;" Text="Remover" />
                </li>
            </ul>
        </div>


        <div id="center_content">
            <div class="middle_box">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="529px" PageIndex="10" Width="823px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="100" ControlStyle-Height="100" HeaderText="My Image">
                         <ControlStyle Height="100px" Width="100px"></ControlStyle>
                       </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>


        </div>

    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>

</body>
</html>

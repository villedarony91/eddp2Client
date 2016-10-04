<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="EDDP2.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>EDD Proyecto 2</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

</head>
    <style>
            .btn {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            padding: 4px 10px 4px;
            margin-bottom: 0;
            font-size: 13px;
            line-height: 18px;
            color: #333333;
            text-align: center;
            text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
            vertical-align: middle;
            background-color: #f5f5f5;
            background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
            background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: linear-gradient(top, #ffffff, #e6e6e6);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0);
            border-color: #e6e6e6 #e6e6e6 #e6e6e6;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
            border: 1px solid #e6e6e6;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            cursor: pointer;
            *margin-left: .3em;
        }

            .btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] {
                background-color: #e6e6e6;
            }

        .btn-large {
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        .btn:hover {
            color: #333333;
            text-decoration: none;
            background-color: #e6e6e6;
            background-position: 0 -15px;
            -webkit-transition: background-position 0.1s linear;
            -moz-transition: background-position 0.1s linear;
            -ms-transition: background-position 0.1s linear;
            -o-transition: background-position 0.1s linear;
            transition: background-position 0.1s linear;
        }

        .btn-primary, .btn-primary:hover {
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            color: #ffffff;
        }

            .btn-primary.active {
                color: rgba(255, 255, 255, 0.75);
            }

        .btn-primary {
            background-color: #4a77d4;
            background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4));
            background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -o-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: linear-gradient(top, #6eb6de, #4a77d4);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);
            border: 1px solid #3762bc;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.4);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5);
        }

            .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] {
                filter: none;
                background-color: #4a77d4;
            }

        .btn-block {
            width: 100%;
            display: block;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            -o-box-sizing: border-box;
            box-sizing: border-box;
        }
        </style>
<body>
    <form id="form1" runat="server">
    <div id="topheader"></div>
            <button type="submit" name="btn" class="btn btn-primary btn-block btn-large" runat="server" onserverclick="Unnamed_ServerClick">Cerrar Sesion</button>
    <div id="main_container">


        <div id="subheader">
            <div class="logo"><a href="home.aspx"><img src="images/logo.gif" width="190" height="76" border="0" alt="" title="" /></a></div>
        

        </div>

        <div id="menu">
            <ul>
                <li><a href="home.aspx" title="">Home</a></li>
                <li class="separator"></li>
                <li><a href="WhishList.aspx">Whishlist</a></li>
                <li class="separator"></li>
                <li><a href ="Carrito.aspx"> Carrito</a>  </li>
                <li class="separator"></li>
                <li><a href="showUserGraph.aspx">Ver graficas</a></li>
                <li class="separator"></li>
                
                <li>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 280px; top: 1px; position: relative; height: 29px; width: 93px; margin-bottom: 0px" Text="Add Cart" />
                </li>
                <li></li>
                <li></li>
                <li></li>
                <li>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="position: relative; top: 4px; left: 288px; height: 28px" Text="Add Whislist" />
                </li>
            </ul>
        </div>


        <div id="center_content">
            <div class="middle_box">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC"
                     BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
                     GridLines="Horizontal" Height="482px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                     Width="824px" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">

                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                                      <asp:ImageField DataImageUrlField="Value" ControlStyle-Width="100" ControlStyle-Height="100" HeaderText="My Image">
                                <ControlStyle Height="100px" Width="100px"></ControlStyle>
                    </asp:ImageField>
                        <asp:TemplateField HeaderText="Cantidad">
                           <ItemTemplate >
                                <asp:TextBox ID="tbQty" runat="server" Width="25px" MaxLength="3" EnableViewState="true"/></ItemTemplate>
                            <ItemStyle Width="25px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
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

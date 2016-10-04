<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compra.aspx.cs" Inherits="EDDP2.Compra" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>EDD Proyecto 2</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
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




            .login h1 {
                color: #fff;
                text-shadow: 0 0 10px rgba(0,0,0,0.3);
                letter-spacing: 1px;
                text-align: center;
            }

        input {
            width: 100%;
            margin-bottom: 10px;
            background: rgba(0,0,0,0.3);
            border: none;
            outline: none;
            padding: 10px;
            font-size: 13px;
            color: #fff;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
            border: 1px solid rgba(0,0,0,0.3);
            border-radius: 4px;
            box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
            -webkit-transition: box-shadow .5s ease;
            -moz-transition: box-shadow .5s ease;
            -o-transition: box-shadow .5s ease;
            -ms-transition: box-shadow .5s ease;
            transition: box-shadow .5s ease;
        }

            input:focus {
                box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2);
            }
    </style>

    <script src="js/prefixfree.min.js"></script>
</head>
   
<body>

    <form id="form1" runat="server">

    <div id="topheader"></div>
    <div id="main_container">


        <div id="subheader">
            <div class="logo"><a href="home.html"><img src="images/logo.gif" width="190" height="76" border="0" alt="" title="" /></a></div>
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
                <li>
            </ul>
        </div>


        <div id="center_content">
            <div class="middle_box">
                <div class="box1">
                    <div class="left_img">

            <div class="right_content">
                <h1>Valida tu compra</h1>
                      <input id="user" type="text" name="u" placeholder="Total a Pagar" required="required" runat="server"/>
            <input id="pass" type="password" name="p" placeholder="Password" required="required" runat="server"/><asp:Label ID="lblMsg" runat="server" style="z-index: 1; left: 751px; top: 289px; position: absolute; height: 2px"></asp:Label>
            <button type="submit" name="btn" class="btn btn-primary btn-block btn-large" runat="server" onserverclick="Unnamed_ServerClick">Comprar</button>
                  
            </div>
                    </div>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="815px">
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
                </div>

            </div>


            <div class="wide_content">
    </div>

    </form>

</body>
</html>

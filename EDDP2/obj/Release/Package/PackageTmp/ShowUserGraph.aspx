<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowUserGraph.aspx.cs" Inherits="EDDP2.ShowUserGraph" %>


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
            <div class="logo"><a href="home.aspx" style="font-weight: 700"><img src="images/logo.gif" width="190" height="76" border="0" alt="" title="" /></a></div>
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
                <li class="separator">

                </li>
            </ul>
        </div>


        <div id="center_content">
            <div class="middle_box">
                <div class="box1">
                    <div class="left_img"><img src="images/suitcase.png" border="0" alt="" title="" /></div>
                    <div class="left_p">
                        <h1>Welcome to our business company</h1>
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                    </div>
                </div>

                <div class="box2">
                    <div class="left_img"><img src="images/statistics.png" border="0" alt="" title="" /></div>
                    <div class="left_p">
                        <h1>Selecciona tu tipo de grafica</h1>
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 26px" Text="WhishList" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="height: 26px; " Text="Direcciones" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 29px; " Text="Carrito" />
                       
                    </div>
                </div>
            </div>


            <div class="right_content">
                <h1>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="506px" Width="829px">
                        <columns>
                        <asp:ImageField DataImageUrlField="Value" HeaderText="My Image">
                                
                    </asp:ImageField>
                        </columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </h1>



            </div>


            <div class="wide_content">

                <div class="sub_boxes">
                    <ul>
                        <li><a href="#">business marketing</a></li>
                        <li><a href="#">management contract</a></li>
                        <li><a href="#">international advertising</a></li>
                    </ul>
                </div>

            </div>


        </div>

        <div id="footer">
            <div class="footer_logo"><a href="home.html"><img src="images/footer_logo.gif" alt="" title="" border="0" /></a></div>
            <div class="copyright">
                Business Company &copy; 2008
            </div>
            <div class="footer_links">
                <a href="#">Privacy Policy </a> |
                <a href="#">Terms &amp; Conditions </a> |
                <a href="#">Contact Us </a>

            </div>


        </div>

    </div>

    </form>

</body>
</html>

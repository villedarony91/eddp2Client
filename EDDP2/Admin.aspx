<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EDDP2.Admin" %>

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
            <h1><b>Estructuras de datos</b></h1>
        </div>

        <!-- Slideshow -->
        <div class="w3-display-container mySlides">
            <img src="images\avlTree.png" style="width: 100%" />
            <div class="w3-display-topleft w3-text-white w3-container w3-padding-32 w3-hide-small">
                <span class="w3-white w3-padding-large w3-animate-bottom">AVL</span>
            </div>
        </div>
        <div class="w3-display-container mySlides">
            <img src="images\hashTable.png" style="width: 100%" />
            <div class="w3-display-topleft w3-text-white w3-container w3-padding-32 w3-hide-small">
                <span class="w3-white w3-padding-large w3-animate-bottom">Hash Table</span>
            </div>
        </div>
        <div class="w3-display-container mySlides">
            <img src="images\bTree.png" style="width: 100%" />
            <div class="w3-display-topright w3-text-white w3-container w3-padding-32 w3-hide-big">
                <span class="w3-white w3-padding-large w3-animate-bottom">Arbol B</span>
            </div>
        </div>

        <!-- Slideshow next/previous buttons -->
        <div class="w3-container w3-dark-grey w3-padding-8">
            <div class="w3-left w3-hover-text-teal w3-large" onclick="plusDivs(-1)">❮</div>
            <div class="w3-right w3-hover-text-teal w3-large" onclick="plusDivs(1)">❯</div>

            <div class="w3-center">
                <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
                <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
                <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
            </div>
        </div>

        <div class="w3-row">
            <div class="w3-center w3-padding-64">
                <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Graficas estructuras</span>
            </div>
        </div>

        <!-- Contact -->

        <form runat="server">
            <div class="w3-group">
            </div>
            <asp:FileUpload ID="FileUploadControl" runat="server" />
            <asp:Button runat="server" ID="UploadButton" Text="Upload" onserverclick="UploadButton_Click" />
            <asp:Label runat="server" ID="StatusLabel" Text="Upload status: " />
        </form>

    </div>
    <script>
        // Slideshow script
        var slideIndex = 1;
        showDivs(slideIndex);
        function plusDivs(n) {
            showDivs(slideIndex += n);
        }
        function currentDiv(n) {
            showDivs(slideIndex = n);
        }
        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demodots");
            if (n > x.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = x.length };
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-white", "");
            }
            x[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " w3-white";
        }
    </script>

</body>
</html>

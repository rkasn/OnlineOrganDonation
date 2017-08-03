<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        body{
             background-image: url(images/service-bg.png);
            background-repeat:repeat;
            border-bottom-width:0px;
            background-attachment:fixed;
        }
        .auto-style1 {
            font-size: xx-large;
            text-align:center;
            }
        .auto-style2 {
            color:white;
            font-family:'Segoe UI';
            font-size:30pt;
            font-weight:bold;
        }
        .auto-style3 {
            text-align: center;
        }
         
        .auto-style5 {
            text-align:center;
            position: absolute;
            z-index: inherit;
            color:white;
            font-family:'Segoe UI';
            font-size:50pt;
            left: 630px;
            top: 70px;
            width: 450px;
            height: 100px;
        }
        a{
           text-decoration:none;
           font-family:"Segoe UI";
           font-size:small;
           color:white;
        }

        li{
            list-style:none;
            float:right;
            margin-left:15px;
        }
        .auto-style6 {
            font-size: xx-large;
            text-align:center;
        }
        .auto-style10 {
            position:absolute;
            z-index:inherit;
            padding-top:22px;
            float: right;
            left: 1350px;
            top: 3px;
        }
        li{
            list-style:none;
            float:right;
            margin-left:40px;
        }
        .auto-style9 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color:transparent;
            color: white;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            border-radius: 10px;
        }
        </style>
</head>
<body style="margin:0;">

    <form id="form1" runat="server">
    <div class="auto-style1">
    
        &nbsp;<div class="auto-style5">
            <span class="auto-style6">&nbsp;</span><b>Admin Page</b>
        </div>
        <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>
        <br />
            
        </div>
        &nbsp;
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="auto-style3">
            <asp:Button ID="Button1"  runat="server" BackColor="Transparent" BorderColor="White" BorderStyle="None" CssClass="auto-style2" ForeColor="White" OnClick="Button1_Click" Text="1. Donor" />
            <br /><br />
            <asp:Button ID="Button2" runat="server" BackColor="Transparent" BorderColor="White" BorderStyle="None" CssClass="auto-style2" ForeColor="White" OnClick="Button2_Click" Text="2. Patient" />
            <br /><br />
            <asp:Button ID="Button3" runat="server" BackColor="Transparent" BorderColor="White" BorderStyle="None" CssClass="auto-style2" ForeColor="White" Text="3. Hospital" OnClick="Button3_Click" />
    </div>
      </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <style type="text/css">
        body{
            background-image: url(images/service-bg.png);
            background-repeat:repeat;
            border-bottom-width:0px;
            background-attachment:fixed;
        }
        .auto-style1 {
            width: 100%;
        }
        .container{
            width:800px;
            height:400px;
            text-align:center;
            background-color:white;
            margin:0 auto;
            border-radius:4px;
            margin-top:170px;
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
        
        .auto-style54 {
            text-align: right;
            width: 159px;
            height: 31px;
            font-family:'Segoe UI';
        }
        .auto-style56 {
            text-align: left;
            width: 137px;
            height: 31px;
            font-family:'Segoe UI';
        
            .abc{
                    margin-top:50px;
                }
        </style>
</head>
<body>

    <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">Please Log In here</h1>>
    <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink2" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>
    <div class ="container">
        <form id="form2" runat="server">
            <h4 style="width: 100%;text-align: center;font-size: 20pt;font-family:'Segoe UI'">Log In</h4>
            <div>
                <table class="auto-style1">
                    
                        <td class="auto-style54">User Name&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Password&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox TextMode="Password" ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:HyperLink ID="HyperLink1" ForeColor="Blue" Font-Size="Small" runat="server" CssClass="abc"><br />Not A Registered Hospital?</asp:HyperLink>
                        </td>
                        
                    </tr>
                </table>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
        </form>
    </div>
</body>
</html>

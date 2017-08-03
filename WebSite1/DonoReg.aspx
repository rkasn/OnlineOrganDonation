<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonoReg.aspx.cs" Inherits="DonoReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donor Registration</title>
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
        
        .auto-style53 {
            text-align:center;
            width: 159px;
            height: 35px;
        }
        .auto-style54 {
            text-align: right;
            width: 159px;
            height: 31px;
            font-family:'Segoe UI';
        }
        .auto-style55 {
            text-align: left;
            width: 168px;
            height: 31px;
            font-family:'Segoe UI';
        }
        .auto-style56 {
            text-align: left;
            width: 137px;
            height: 31px;
        }
        .auto-style57 {
            margin-left: 0px;
        }
    </style>
</head>
<body>

    <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">Donor Registration Form (Claim your Donor card today)</h1>
    <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>

    <p style="text-align:center;"><img src="images/card.jpg" width="350" height="200"></p>

    <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:20pt;">All our pledges will be forwarded to the National Organ & Tissue Transplant Organisation (NOTTO)</h1>

    <div class ="container">
        <form id="form2" runat="server">

            <h4 style="width: 100%;text-align: center;font-size: 20pt;font-family:'Segoe UI'">Donor Information</h4>
            <div>
                <table class="auto-style1">
                    
                        
                    <tr>
                        <td class="auto-style54">First Name&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                        <td class="auto-style54">Email ID&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Middle Name&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style54">Emergency Name&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Last Name&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style54">Emergency Ph Number&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Age&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox TextMode="Number" ID="TextBox8" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style54">Address Line 1&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox14" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Gender&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style57" Width="128px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Transgender</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style54">Address Line 2&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        &nbsp;</td>
                       
                    </tr>
                    <tr>
                        <td class="auto-style54">Choose ID Type&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style57" Height="16px" Width="125px">
                                <asp:ListItem>PAN Card</asp:ListItem>
                                <asp:ListItem>Aadhar Card</asp:ListItem>
                                <asp:ListItem>Driving License</asp:ListItem>
                                <asp:ListItem>Voter ID Card</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style54">City&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style54">ID Card Number &nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style54">State&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox16" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Phone Number&nbsp;&nbsp; </td>
                        <td class="auto-style56">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style54">ZIP&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style53" colspan="4">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
        </form>
    </div>
</body>
</html>

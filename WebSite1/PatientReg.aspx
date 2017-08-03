<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientReg.aspx.cs" Inherits="Reg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Registration</title>
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
            width:1200px;
            height:450px;
            text-align:center;
            background-color:white;
            margin:0 auto;
            border-radius:4px;
            margin-top:150px;
        }
        .auto-style7 {
            text-align: right;
            width: 133px;
            height: 35px;
            font-family:'Segoe UI';
        }
        .auto-style11 {
            text-align: right;
            width: 116px;
            height: 36px;
        }
        .auto-style12 {
            width: 136px;
            height: 36px;
            text-align: left;
        }
        .auto-style21 {
            width: 133px;
            height: 35px;
            text-align: center;
        }
        .auto-style31 {
            text-align: right;
            width: 159px;
            height: 35px;
            font-family:'Segoe UI';
        }
        .auto-style33 {
            width: 133px;
            height: 35px;
        }
        .auto-style36 {
            text-align: left;
            width: 136px;
            height: 35px;
        }
        .auto-style39 {
            width: 136px;
        }
        .auto-style42 {
            width: 116px;
        }
        .auto-style43 {
            width: 89px;
            height: 35px;
            text-align: center;
            font-family:'Segoe UI';
            font-size: large;
        }
        .auto-style44 {
            text-align: right;
            width: 116px;
            height: 35px;
            font-family:'Segoe UI';
        }
        .auto-style46 {
            width: 167px;
            text-align: center;
            font-size: large;
            font-family:'Segoe UI';
        }
        .auto-style47 {
            width: 159px;
            text-align: center;
            font-size: large;
            font-family:'Segoe UI';
        }
        .auto-style49 {
            width: 164px;
        }
        .auto-style51 {
            text-align: left;
            width: 164px;
            height: 35px;
        }
        .auto-style52 {
            text-align: left;
            width: 168px;
            height: 35px;
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
<body>

    <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">Patient Registration Form (Your first step towards a new life)</h1>
    <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">Provide your details here</h1>
    <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>
    <div class ="container">
        <form id="form1" runat="server">
            <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style47" colspan="2"><strong>Patient General Information</strong></td>
                        <td class="auto-style46" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Hospital Information</strong></td>
                        <td class="auto-style43" colspan="2"><strong>Patient Contact Information</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style31">First Name&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style7">Hospital ID&nbsp;&nbsp; </td>
                        <td class="auto-style51">
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style44">Phone Number&nbsp;&nbsp; </td>
                        <td class="auto-style36">
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Middle Name&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style7">Hospital Name&nbsp;&nbsp; </td>
                        <td class="auto-style51">
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style44">Email ID&nbsp;&nbsp; </td>
                        <td class="auto-style36">
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Last Name&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style7">Doctor In-Charge&nbsp;&nbsp; </td>
                        <td class="auto-style51">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style44">Address Line 1&nbsp;&nbsp; </td>
                        <td class="auto-style36">
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Choose Identity Card&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="128px">
                                <asp:ListItem>Pan Card No.</asp:ListItem>
                                <asp:ListItem>Aadhar Card No.</asp:ListItem>
                                <asp:ListItem>Driving License No.</asp:ListItem>
                                <asp:ListItem>Voter ID No.</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style7">Doctor Specialization&nbsp;&nbsp; </td>
                        <td class="auto-style51">
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style11">Address Line 2&nbsp;&nbsp; </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Identity Card Number&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style21">
                            &nbsp;&nbsp;</td>
                        <td class="auto-style49"></td>
                        <td class="auto-style44">City&nbsp;&nbsp; </td>
                        <td class="auto-style36">
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Age&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style49"></td>
                        <td class="auto-style11">State&nbsp;&nbsp; </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox16" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Gender&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="137px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Transgender</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style33"></td>
                        <td class="auto-style49"></td>
                        <td class="auto-style44">Zip&nbsp;&nbsp; </td>
                        <td class="auto-style36">
                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox17" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Blood Group&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style49"></td>
                        <td class="auto-style42"></td>
                        <td class="auto-style39"></td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Disease&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style33" colspan="2">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style49"></td>
                        <td class="auto-style39"></td>
                    </tr>
                    <tr>
                        <td class="auto-style31">Organ Name&nbsp;&nbsp; </td>
                        <td class="auto-style52">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style49"></td>
                        <td class="auto-style42"></td>
                        <td class="auto-style39"></td>
                    </tr>
                    
                </table>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
        </form>
    </div>
</body>
</html>

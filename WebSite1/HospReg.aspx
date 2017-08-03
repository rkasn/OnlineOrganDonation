<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HospReg.aspx.cs" Inherits="HospReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital Registration</title>
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
            height:550px;
            text-align:center;
            background-color:white;
            margin:0 auto;
            border-radius:4px;
            margin-top:135px;
        }
        
        .auto-style53 {
            text-align: center;
            width: 159px;
            height: 35px;
        }
        .auto-style54 {
            text-align: right;
            width: 159px;
            height: 31px;
            font-family:'Segoe UI'
        }
        .auto-style55 {
            text-align: left;
            width: 168px;
            height: 31px;
            font-family:'Segoe UI'
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

    <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">Hospital Registration Form</h1>
    <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>

    <div class ="container">
        <form id="form1" runat="server">
            <h4 style="width: 100%;text-align: center;font-size: 20pt;font-family:'Segoe UI'">Hospital Registration</h4>
            <div>
                <table class="auto-style1">
                   
                    <tr>
                        <td class="auto-style54">Hospital ID&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                            </td>
                        <td class="auto-style54">Password&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox9" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Hospital Name&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox  ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style54">Confirm Password&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox11" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Phone Number&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Email ID&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">CMO Name&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">CMO Phone No&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">CMO Email ID&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Address Line 1&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">Address Line 2&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                        
                        &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">City&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">State&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style54">ZIP&nbsp;&nbsp; </td>
                        <td class="auto-style55">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style53" colspan="2">
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

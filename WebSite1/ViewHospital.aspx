<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewHospital.aspx.cs" Inherits="ViewHospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital Details</title>
    <style type="text/css">
        body{
            background-image: url(images/service-bg.png);
            background-repeat:repeat;
            border-bottom-width:0px;
            background-attachment:fixed;
        }
        .container{
            width:1140px;
            height:450px;
            text-align:center;
            background-color:white;
            margin:0 auto;
            border-radius:4px;
            margin-top:150px;
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

    <div>
        <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">HOSPITAL DETAILS</h1>
    </div>
    <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>
    <div class="container">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Hid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Hid" HeaderText="Hid" ReadOnly="True" SortExpression="Hid" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PhNo" HeaderText="PhNo" SortExpression="PhNo" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="CMO_Name" HeaderText="CMO_Name" SortExpression="CMO_Name" />
                <asp:BoundField DataField="CMO_PhNo" HeaderText="CMO_PhNo" SortExpression="CMO_PhNo" />
                <asp:BoundField DataField="CMO_Email" HeaderText="CMO_Email" SortExpression="CMO_Email" />
                <asp:BoundField DataField="AddrL1" HeaderText="AddrL1" SortExpression="AddrL1" />
                <asp:BoundField DataField="AddrL2" HeaderText="AddrL2" SortExpression="AddrL2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZIP" HeaderText="ZIP" SortExpression="ZIP" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Hospital1 FROM Hospital1 INNER JOIN Hospital2 ON Hospital1.Hid = Hospital2.Hid" SelectCommand="SELECT Hospital1.Hid, Hospital1.Name, Hospital1.PhNo, Hospital1.Email, Hospital1.CMO_Name, Hospital1.CMO_PhNo, Hospital1.CMO_Email, Hospital2.AddrL1, Hospital2.AddrL2, Hospital2.City, Hospital2.State, Hospital2.ZIP FROM Hospital1 INNER JOIN Hospital2 ON Hospital1.Hid = Hospital2.Hid"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
        </div>
</body>
</html>

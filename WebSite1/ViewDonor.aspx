<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDonor.aspx.cs" Inherits="ViewDonor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donor Details</title>
    <style type="text/css">
        body{
            background-image: url(images/service-bg.png);
            background-repeat:repeat;
            border-bottom-width:0px;
            background-attachment:fixed;
        }
        .container{
            width:1260px;
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
        <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">DONOR DETAILS</h1>
    </div>
    <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>
    <div class ="container">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Did" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Did" HeaderText="Did" ReadOnly="True" SortExpression="Did" />
                <asp:BoundField DataField="F_Name" HeaderText="F_Name" SortExpression="F_Name" />
                <asp:BoundField DataField="M_Name" HeaderText="M_Name" SortExpression="M_Name" />
                <asp:BoundField DataField="L_Name" HeaderText="L_Name" SortExpression="L_Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="PhNo" HeaderText="PhNo" SortExpression="PhNo" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="EM_Name" HeaderText="EM_Name" SortExpression="EM_Name" />
                <asp:BoundField DataField="EM_PhNo" HeaderText="EM_PhNo" SortExpression="EM_PhNo" />
                <asp:BoundField DataField="AddrL1" HeaderText="AddrL1" SortExpression="AddrL1" />
                <asp:BoundField DataField="AddrL2" HeaderText="AddrL2" SortExpression="AddrL2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Donor1 FROM Donor1 INNER JOIN Donor2 ON Donor1.Did = Donor2.Did INNER JOIN Donor3 ON Donor1.Did = Donor3.Did" SelectCommand="SELECT Donor1.*, Donor2.PhNo, Donor2.Email, Donor2.EM_Name, Donor2.EM_PhNo, Donor3.AddrL1, Donor3.AddrL2, Donor3.City, Donor3.Zip, Donor3.State FROM Donor1 INNER JOIN Donor2 ON Donor1.Did = Donor2.Did INNER JOIN Donor3 ON Donor1.Did = Donor3.Did"></asp:SqlDataSource>
    </form>
        </div>
</body>
</html>

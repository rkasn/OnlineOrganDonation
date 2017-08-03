<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewPatient.aspx.cs" Inherits="ViewPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Details</title>
    <style type="text/css">
        body{
            background-image: url(images/service-bg.png);
            background-repeat:repeat;
            border-bottom-width:0px;
            background-attachment:fixed;
        }
        .container{
            width:1460px;
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
        <h1 style="font-family:'Segoe UI';color:white;text-align:center;font-size:30pt;">PATIENT DETAILS</h1>
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
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" SortExpression="Pid" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:BoundField DataField="MName" HeaderText="MName" SortExpression="MName" />
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="Disease" HeaderText="Disease" SortExpression="Disease" />
                <asp:BoundField DataField="OrganName" HeaderText="OrganName" SortExpression="OrganName" />
                <asp:BoundField DataField="Hid" HeaderText="Hid" SortExpression="Hid" />
                <asp:BoundField DataField="HospitalName" HeaderText="HospitalName" SortExpression="HospitalName" />
                <asp:BoundField DataField="DrName" HeaderText="DrName" SortExpression="DrName" />
                <asp:BoundField DataField="DrSpecialization" HeaderText="DrSpecialization" SortExpression="DrSpecialization" />
                <asp:BoundField DataField="PhNo" HeaderText="PhNo" SortExpression="PhNo" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="AddrL1" HeaderText="AddrL1" SortExpression="AddrL1" />
                <asp:BoundField DataField="AddrL2" HeaderText="AddrL2" SortExpression="AddrL2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Patient1 FROM Patient1 INNER JOIN Patient2 ON Patient1.Pid = Patient2.Pid INNER JOIN Patient3 ON Patient1.Pid = Patient3.Pid INNER JOIN Patient4 ON Patient1.Pid = Patient4.Pid" SelectCommand="SELECT Patient1.Pid, Patient1.FName, Patient1.MName, Patient1.LName, Patient1.Age, Patient1.Gender, Patient2.BloodGroup, Patient2.Disease, Patient2.OrganName, Patient3.Hid, Patient3.HospitalName, Patient3.DrName, Patient3.DrSpecialization, Patient4.PhNo, Patient4.Email, Patient4.AddrL1, Patient4.AddrL2, Patient4.City, Patient4.State FROM Patient1 INNER JOIN Patient2 ON Patient1.Pid = Patient2.Pid INNER JOIN Patient3 ON Patient1.Pid = Patient3.Pid INNER JOIN Patient4 ON Patient1.Pid = Patient4.Pid"></asp:SqlDataSource>
    
    </div>
    </form>
        </div>
</body>
</html>

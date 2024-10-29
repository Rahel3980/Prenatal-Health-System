<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/pregnantwomen/pregnant.Master" CodeBehind="appointment.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="premaster.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<head>
    <link href="appointment.css" rel="stylesheet" />
</head>
<body>
    <asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label>
    <br><br><br><br><br>
        <div>
            <label for="txtName" style="font-weight: bold; text-transform: capitalize; font-size: large">username:</label>
            <asp:TextBox ID="txtName" runat="server" Width="338px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search Appointments" OnClick="btnSearch_Click" />
            <asp:GridView ID="gvAppointments" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>

        </div>
        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
    
</body>
</html>


</asp:Content>

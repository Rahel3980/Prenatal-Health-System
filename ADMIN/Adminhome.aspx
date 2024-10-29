<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ADMIN/Admin.Master" CodeBehind="Adminhome.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.Adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="adminhome.css" rel="stylesheet" />
   
    <div class="dashboard-container">
        <div class="dashboard-header">
            <h1>Admin Dashboard - Prenatal Care Service</h1>
             <asp:Label ID="lblWelcomeAdmin" runat="server" Text="Welcome, Administrator"></asp:Label>

        </div>

        <div class="metrics-section">
            <div class="metric-box">
    <img src="8109306.png" />
                <h3>Total Users</h3>
                <asp:Label ID="lblTotalUsers" runat="server" Text="0"></asp:Label>
            </div>
            <div class="metric-box">
<img src="8109306.png" />
                <h3>Total Doctors</h3>
                <asp:Label ID="lblTotalDoctors" runat="server" Text="0"></asp:Label>
            </div>
            <div class="metric-box">
<img src="check%20in.jpg" />
                <h3>Total Check-ins</h3>
                <asp:Label ID="lblTotalCheckIns" runat="server" Text="0"></asp:Label>
            </div>
            <div class="metric-box">
<img src="appointment.jpg" />
                <h3>Appointments</h3>
                <asp:Label ID="lblPendingAppointments" runat="server" Text="0"></asp:Label>
            </div>
                    <div class="metrics-section">
    <div class="metric-box">
        <img src="active%20users.png" />
        <h3>Active Users</h3>
        <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
    </div>
    <div class="metric-box">
        <img src="in%20active%20users.jpg" />
        <h3>Inactive Users</h3>
        <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
    </div>
    <div class="metric-box">
        <img src="active%20users.png" />
        <h3>Active Staff</h3>
        <asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
    </div>
    <div class="metric-box">
        <img src="in%20active%20users.jpg" />
        <h3>Inactive Doctors</h3>
        <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
    </div>
</div>

        </div>

        <div class="activity-section">
            <h2>Recent Registrations</h2>
            <asp:GridView ID="gvRecentRegistrations" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="RecordType" HeaderText="Type" />
        <asp:BoundField DataField="UserName" HeaderText="Username" />
        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
        <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
        <asp:BoundField DataField="RegistrationDate" HeaderText="Registration Date" DataFormatString="{0:yyyy-MM-dd}" />
    </Columns>
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

    </div>
    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
    </asp:Content>

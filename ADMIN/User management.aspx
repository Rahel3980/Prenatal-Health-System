<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ADMIN/Admin.Master" CodeBehind="User management.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.REPORTS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Manage DOC STAFF ACCOUNTS</h2>
    <link href="UserManagement.css" rel="stylesheet" />
    <asp:Label ID="lblwelcome" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="322px" Width="1412px" style="margin-bottom: 62px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="DOCID" HeaderText="DocID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth" />
            <asp:BoundField DataField="Age" HeaderText="Age" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" />
            <asp:BoundField DataField="Kebele" HeaderText="Kebele" />
            <asp:BoundField DataField="Wereda" HeaderText="Wereda" />
            <asp:BoundField DataField="SpecializedOrAdmin" HeaderText="Role" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
         
               <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString15 %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString15.ProviderName %>" SelectCommand="SELECT * FROM [docORadminDetails]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="ENTER THE 'USER NAME ' WHICH YOU WANT TO  ACTIVATE OR DEACTIVATE"></asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="62px" ></asp:TextBox><asp:Button ID="Buttonact" runat="server" Text="Activate or Deactivate" BackColor="#00CC99" Height="70px" BorderColor="#666699" BorderStyle="Double" Width="146px" />

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>



    <h2>Manage USER ACCOUNTS</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="1419px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="PregnantID" HeaderText="PregnantID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth" />
            <asp:BoundField DataField="Age" HeaderText="Age" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" />
            <asp:BoundField DataField="Kebele" HeaderText="Kebele" />
            <asp:BoundField DataField="Wereda" HeaderText="Wereda" />
            <asp:BoundField DataField="PregnancyLevel" HeaderText="Pregnancy Level" />
            <asp:BoundField DataField="HIVStatus" HeaderText="HIV Status" />
            <asp:BoundField DataField="OtherTransmittedDiseases" HeaderText="Other Transmitted Diseases" />
            <asp:BoundField DataField="Career" HeaderText="Career" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="EmergencyPersonName" HeaderText="Emergency Person Name" />
            <asp:BoundField DataField="EmergencyContact" HeaderText="Emergency Contact" />
            <asp:TemplateField HeaderText="Status">
    <ItemTemplate>
        <span id="statusLabel" runat="server"
              style='<%# If(Eval("Status").ToString().ToLower() = "active", "color: green;", "color: red;") %>'>
            <%# If(Eval("Status").ToString().ToLower() = "active", "Active", "Inactive") %>
        </span>
    </ItemTemplate>
</asp:TemplateField>

        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>



<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString16 %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString16.ProviderName %>" SelectCommand="SELECT * FROM [UserRegistrationDetails]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text="ENTER THE 'USER NAME ' WHICH YOU WANT TO  ACTIVATE OR DEACTIVATE" BackColor="Black"></asp:Label><br />

    <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#339933" BorderStyle="Solid" Height="70px" Width="62px" ></asp:TextBox><asp:Button ID="Buttonaction" runat="server" Text="Activate or Deactivate" BackColor="#FF3300" Height="70px" BorderColor="#666699" BorderStyle="Double" Width="139px" />
    <asp:Label ID="lblMessage2" runat="server" Text=""></asp:Label>


</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ADMIN/Admin.Master" CodeBehind="admindashboard.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.admindashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>User Management</h2>
    <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Username" />
            <asp:BoundField DataField="Role" HeaderText="Role" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:ButtonField Text="Edit" CommandName="Edit" />
            <asp:ButtonField Text="Delete" CommandName="Delete" />
        </Columns>
    </asp:GridView>

    <asp:Button ID="btnAddUser" runat="server" Text="Add New User" OnClick="btnAddUser_Click" />

</asp:Content>

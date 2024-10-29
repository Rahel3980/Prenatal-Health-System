<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/pregnantwomen/pregnant.Master" CodeBehind="profile.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>User Profile</title>
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="font-weight: bold; color: #333300; text-transform: capitalize">

        <!-- Profile View Section -->
        <div class="view-container">
            <h2>Profile Information</h2>
            <asp:Label ID="lblwelcome" runat="server" Text="Welcome, "></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Text="User Name: "></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="First Name: "></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Text="Middle Name: "></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Text="Last Name: "></asp:Label><br />
            <asp:Label ID="Label5" runat="server" Text="Sex: "></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="Date of Birth: "></asp:Label><br />
            <asp:Label ID="Label7" runat="server" Text="Age: "></asp:Label><br />
            <asp:Label ID="Label8" runat="server" Text="Wereda: "></asp:Label><br />
            <asp:Label ID="Label9" runat="server" Text="Nationality: "></asp:Label><br />
            <asp:Label ID="Label10" runat="server" Text="Kebele: "></asp:Label><br />
            <asp:Label ID="Label11" runat="server" Text="Pregnancy Level: "></asp:Label><br />
            <asp:Label ID="Label12" runat="server" Text="HIV Status: "></asp:Label><br />
            <asp:Label ID="Label13" runat="server" Text="Other Transmitted Diseases: "></asp:Label><br />
            <asp:Label ID="Label14" runat="server" Text="Career: "></asp:Label><br />
            <asp:Label ID="Label15" runat="server" Text="Phone: "></asp:Label><br />
            <asp:Label ID="Label16" runat="server" Text="Emergency Person Name: "></asp:Label><br />
            <asp:Label ID="Label17" runat="server" Text="Emergency Contact: "></asp:Label><br />
            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
       <div>
            <a href="../Security.aspx">Add Security question </a>
      </div>
</asp:Content>

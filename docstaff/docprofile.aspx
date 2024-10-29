<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/docstaff/doc.Master" CodeBehind="docprofile.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.docprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="profile.css" rel="stylesheet" />
    <div class="view-container" style="margin-top: 100px; font-weight: bold; color: #333300; text-transform: capitalize;">
        <h2>Profile Information</h2>
        <asp:Label ID="lblwelcome" runat="server" Text="Welcome, "></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text="User Name: "></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="First Name: "></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="Middle Name: "></asp:Label><br />
        <asp:Label ID="Label4" runat="server" Text="Last Name: "></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Text="email: "></asp:Label><br />
        <asp:Label ID="Label6" runat="server" Text="Sex: "></asp:Label><br />
        <asp:Label ID="Label7" runat="server" Text="Date of Birth: "></asp:Label><br />
        <asp:Label ID="Label8" runat="server" Text="Age: "></asp:Label><br />
        <asp:Label ID="Label9" runat="server" Text="Wereda: "></asp:Label><br />
        <asp:Label ID="Label10" runat="server" Text="Nationality: "></asp:Label><br />
        <asp:Label ID="Label11" runat="server" Text="Kebele: "></asp:Label><br />
        <asp:Label ID="Label12" runat="server" Text="Phone: "></asp:Label><br />
        <asp:Label ID="Label13" runat="server" Text="SpecializedOrAdmin : "></asp:Label><br />
       <a href="../Security.aspx">Securityquestion</a>

        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
    </div>
          <div>
          </div>     

</asp:Content>

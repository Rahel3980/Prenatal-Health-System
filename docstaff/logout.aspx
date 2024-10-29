<%@ Page Title="Logout" Language="vb" AutoEventWireup="false" MasterPageFile="~/docstaff/doc.Master" CodeBehind="logout.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Logout</title>
    <script type="text/javascript">
        window.onload = function () {
            if (confirm("Are you sure you want to log out?")) {
                document.getElementById("logoutForm").submit();
            } else {
                window.location.href = "Dashboard.aspx";  // Redirect back to dashboard or any other page
            }
        };
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="changepassword.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="change.css" rel="stylesheet" />
    <br />
    <br />
    <br />
    <br />
    
    <h2>Change Password</h2>
    
    <div style="width: 400px; margin: auto; padding: 100px; border: 1px solid #ddd;">
         <!-- User Name Field -->
        <asp:Label ID="LblUserName" runat="server" Text="User Name:" />
        <asp:TextBox ID="TxtUserName" runat="server" Width="200px" style="margin-left: 36px" />
        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
            ControlToValidate="TxtUserName" ErrorMessage="User Name is required." ForeColor="Red" />
        <br /><br />
        
        <asp:Label ID="LblNewPassword" runat="server" Text="New Password:" />
        <asp:TextBox ID="TxtNewPassword" runat="server" TextMode="Password" Width="200px" />
        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" 
            ControlToValidate="TxtNewPassword" ErrorMessage="New Password is required." ForeColor="Red" />
        <asp:RegularExpressionValidator ID="PasswordLengthValidator" runat="server" 
            ControlToValidate="TxtNewPassword" ValidationExpression=".{8,}" 
            ErrorMessage="Password must be at least 8 characters long." ForeColor="Red" />
        <br /><br />

        <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password:" />
        <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password" Width="200px" />
        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
            ControlToValidate="TxtConfirmPassword" ErrorMessage="Confirm Password is required." ForeColor="Red" />
        <asp:CompareValidator ID="PasswordCompare" runat="server" 
            ControlToCompare="TxtNewPassword" ControlToValidate="TxtConfirmPassword" 
            ErrorMessage="Passwords do not match." ForeColor="Red" />
        <br /><br />

        <asp:Button ID="BtnChangePassword" runat="server" Text="Change Password" OnClick="BtnChangePassword_Click" />
        <br /><br />
        <asp:Label ID="LblChangePasswordMessage" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>

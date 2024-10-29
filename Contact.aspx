<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        main {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #2c3e50;
            text-align: center;
        }

        address {
            font-style: normal;
            line-height: 1.6;
            margin-bottom: 20px;
            color: #34495e;
        }

        a {
            color: #2980b9;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .contact-details {
            margin: 0 auto;
            max-width: 600px;
            text-align: center;
        }
    </style>

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <p>If you have any questions or need assistance, feel free to reach out to us:</p>

        <div class="contact-details">
            <address>
                Gondar Comprehensive Specialized Hospital<br />
                Gondar, Ethiopia<br />
                <abbr title="Phone">P:</abbr> +251 58 123 4567
            </address>

            <address>
                <strong>Support:</strong> <a href="mailto:support@gondarhospital.et">support@gondarhospital.et</a><br />
                <strong>Appointments:</strong> <a href="mailto:appointments@gondarhospital.et">appointments@gondarhospital.et</a>
            </address>
        </div>
    </main>
</asp:Content>

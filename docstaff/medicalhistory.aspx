<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/docstaff/doc.Master" CodeBehind="medicalhistory.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.medicalhistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function calculateAge() {
            var dob = document.getElementById("<%=txtHistoryDate.ClientID %>").value;
            if (dob) {
                var today = new Date();
                var birthDate = new Date(dob);
                var age = today.getFullYear() - birthDate.getFullYear();
                var m = today.getMonth() - birthDate.getMonth();
                if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
                    age--;
                }
                document.getElementById("<%=txtAge.ClientID %>").value = age;
            }
        }
    </script>
    <style type="text/css">
        .auto-style2 {
            width: 636px;
            height: 393px;
            margin-left: 286px;
        }
        .auto-style3 {
            margin-left: 71px;
        }
        .auto-style4 {
            margin-left: 79px;
        }
    .auto-style5 {
        width: 442px;
    }
    .auto-style6 {
        width: 251px;
    }
    .auto-style7 {
        margin-left: 63px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
 <br>
<br>
<br>
<br>

    <asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label>
    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
    <asp:GridView ID="GridView1" runat="server"  Visible="False" DataSourceID="SqlDataSource1" CellPadding="4" CssClass="auto-style4" ForeColor="#333333" GridLines="None" Width="656px">
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString3 %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString3.ProviderName %>" SelectCommand="SELECT [PregnantID], [UserName], [FirstName], [MiddleName], [LastName], [Age], [HIVStatus], [OtherTransmittedDiseases], [PregnancyLevel] FROM [UserRegistrationDetails]"></asp:SqlDataSource>
<div class="container">
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Medical History</h2>
        <table border="0" cellpadding="5" cellspacing="0" class="auto-style2" style="border-color: #006666; font-weight: bold; text-transform: capitalize; background-color: #CCFFCC; color: #000000;">
        <asp:HiddenField ID="hfUserName" runat="server" />
        <asp:HiddenField ID="hfspecialized" runat="server" />

             <tr>
     <td class="auto-style6"><label for="txtpregnantID">pregnantID:</label></td>
     <td class="auto-style5"><asp:TextBox ID="txtpregnantID" runat="server" placeholder="Enter pregnantID" Width="251px"></asp:TextBox></td>
 </tr>
            <tr>
                <td class="auto-style6"><label for="txtFirstName">First Name:</label></td>
                <td class="auto-style5"><asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter First Name" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><label for="txtMiddleName">Middle Name:</label></td>
                <td class="auto-style5"><asp:TextBox ID="txtMiddleName" runat="server" placeholder="Enter Middle Name" Width="249px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><label for="txtLastName">Last Name:</label></td>
                <td class="auto-style5"><asp:TextBox ID="txtLastName" runat="server" placeholder="Enter Last Name" Width="247px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><label for="txtAge">Age:</label></td>
                <td class="auto-style5"><asp:TextBox ID="txtAge" runat="server" placeholder="Enter Age" Width="246px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><label for="txtHistoryDate">Date:</label></td>
                <td class="auto-style5"><asp:TextBox ID="txtHistoryDate" runat="server" placeholder="Enter date" TextMode="Date" Width="244px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><label for="txtCondition">Condition:</label></td>
                <td class="auto-style5"><asp:TextBox ID="txtCondition" runat="server" placeholder="Enter condition" Width="243px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><label for="txtTreatment">Treatment:</label></td>
                <td class="auto-style5"><asp:TextBox ID="txtTreatment" runat="server" placeholder="Enter Treatment" Width="242px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" BorderColor="#333399" BorderStyle="Double" CssClass="auto-style7" Width="87px" />
                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                        

                </td>
            </tr>
        </table>
   
</div>
    <asp:CheckBox ID="checkhistory" runat="server"  AutoPostBack="True" OnCheckedChanged="checkhistory_checked_changed" />
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" CellPadding="4" CssClass="auto-style3" ForeColor="#333333" GridLines="None" Width="582px">
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

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString4 %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [MedicalHistory]"></asp:SqlDataSource>

</asp:Content>

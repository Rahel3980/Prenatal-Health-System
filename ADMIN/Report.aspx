<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ADMIN/Admin.Master" CodeBehind="Report.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <link href="REPORT.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Ethiopic&display=swap" rel="stylesheet">
    <div class="STATUS-container">
    <h2>REPORT ON STATUS OF APPOINTMENT</h2>

    <div class="metrics-section"> 
        <div class="metric-box">
            <img src="WAITING%20APP.jpg" alt="Waiting Appointment" /> 
            <h3>WAITING APPOINTMENT</h3>
            <asp:Label ID="lblWaitingCount" runat="server" Text=""></asp:Label><br />
        </div>

        <div class="metric-box">
            <img src="SUCCESS%20APP.png" alt="Successful Appointment" />
            <h3>SUCCESSFUL APPOINTMENT</h3>
            <asp:Label ID="lblSuccessfulCount" runat="server" Text=""></asp:Label><br />
        </div>

        <div class="metric-box">
            <img src="MISSED%20APP.png" alt="Missed Appointment" />
            <h3>MISSED APPOINTMENT</h3>
            <asp:Label ID="lblMissedCount" runat="server" Text=""></asp:Label><br />
        </div>
    </div> <%-- Close the metrics-section div here --%> 
</div> 
    

        <div>
            <h2>Prenatal Medical History</h2>
            <div>
                PREGNANT ID: <asp:TextBox ID="txtpregnantID" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </div>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            <br />
            <h2>Prenatal care Medical History</h2>
 <p>The medical history of prenatal care system user in Gondar University General Hospital Prenatal Care Service</p>
            <p style="font-family: 'Noto Sans Ethiopic', sans-serif;">
    በጎንደር ዩኒቨርሲቲ አጠቃላይ ሆስፒታል የቅድመ ወሊድ አገልግሎት አገልግሎት የቅድመ ወሊድ አገልግሎት ተጠቃሚ የሕክምና ታሪክ
</p>

<br />
            <div id="divMedicalHistory" runat="server" visible="false">
                <asp:GridView ID="gvMedicalHistory" runat="server" CssClass="table table-striped table-bordered" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>

                <br />
                <asp:Button ID="btnPrint" runat="server" Text="Print to PDF" OnClick="btnPrint_Click" />
            </div>
        </div>
</asp:Content>

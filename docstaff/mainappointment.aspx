<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/docstaff/doc.Master" CodeBehind="mainappointment.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.mainappointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1306px;
            height: 32px;
        }
        .auto-style3 {
            /* Full width for inputs */padding: 8px;
/* Padding inside the input */border: 1px solid #ccc;
/* Border for inputs */border-radius: 4px; /* Rounded corners */;
            box-sizing: border-box;
            margin-left: 98px;
        }
        .auto-style4 {
            /* Full width for inputs */padding: 8px;
/* Padding inside the input */border: 1px solid #ccc;
/* Border for inputs */border-radius: 4px; /* Rounded corners */;
            box-sizing: border-box;
            margin-left: 89px;
        }
        .auto-style7 {
            /* Full width for inputs */padding: 8px;
/* Padding inside the input */border: 1px solid #ccc;
/* Border for inputs */border-radius: 4px; /* Rounded corners */;
            box-sizing: border-box;
            margin-left: 54px;
        }
        .auto-style8 {
            border-radius: 4px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            margin-left: 41px;
            margin-right: 0px;
            padding: 8px;
        }
        .auto-style9 {
            /* Full width for inputs */padding: 8px;
/* Padding inside the input */border: 1px solid #ccc;
/* Border for inputs */border-radius: 4px; /* Rounded corners */;
            box-sizing: border-box;
            margin-left: 100px;
        }
        .auto-style11 {
            /* Full width for inputs */padding: 8px;
/* Padding inside the input */border: 1px solid #ccc;
/* Border for inputs */border-radius: 4px; /* Rounded corners */;
            box-sizing: border-box;
            margin-left: 61px;
        }
        .auto-style12 {
            /* Full width for inputs */padding: 8px;
/* Padding inside the input */border: 1px solid #ccc;
/* Border for inputs */border-radius: 4px; /* Rounded corners */;
            box-sizing: border-box;
            margin-left: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br><br><br><br><br><br><br><br>
    <asp:Label ID="lblwelcome" runat="server" Text="Label"></asp:Label>
    <asp:CheckBox ID="Checkbox1" runat="server" AutoPostBack="True" Text="Show All Users" />
    <asp:GridView ID="GridView1" runat="server" Visible="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString.ProviderName %>" SelectCommand="SELECT [PregnantID], [UserName], [FirstName], [MiddleName], [LastName], [Sex], 
        [DateOfBirth], [Age], [Wereda], [Nationality], [Kebele], [PregnancyLevel], [HIVStatus], [OtherTransmittedDiseases], [Career], [Phone], [EmergencyPersonName], [EmergencyContact] FROM [UserRegistrationDetails] ORDER BY [PregnantID], [UserName], [FirstName]"></asp:SqlDataSource>
    <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text="show dailycheck in" />
    <asp:GridView ID="GridView2" runat="server" Visible="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString2 %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [DailyCheckIn] ORDER BY [UserName]"></asp:SqlDataSource>
        <link href="app.css" rel="stylesheet" />

    <div class="container 12" style="font-weight: bold; text-transform: capitalize">
        <div>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Appointment Booking</h2>
            <p>&nbsp;</p>
        <div class="form-group">
            <label for="txtCheckInID">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CheckIn ID:&nbsp; </label>
            <asp:TextBox ID="txtCheckInID" runat="server" CssClass="auto-style7" Width="488px"></asp:TextBox>
        </div>
        <div class="form-group">

            <label for="UserName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name:</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="auto-style11" Width="490px"></asp:TextBox>
        </div>
        <div class="form-group">

            <label for="FirstName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name:</label>
            <asp:TextBox ID="txtfname" runat="server" CssClass="auto-style11" Width="490px"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="MiddleName" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle Name:</label>
            <asp:TextBox ID="txtmname" runat="server" CssClass="auto-style8" Width="493px"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="LastName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LastName:</label>
            <asp:TextBox ID="txtlname" runat="server" CssClass="auto-style12" Width="494px"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtDate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date:&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="txtDate" runat="server" CssClass="auto-style4" TextMode="Date" Width="494px"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtTime">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time:</label>
            <asp:TextBox ID="txtTime" runat="server" CssClass="auto-style9" TextMode="Time" Width="494px"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtNotes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Notes:</label>
            <asp:TextBox ID="txtNotes" runat="server" CssClass="auto-style3" TextMode="MultiLine" Rows="3" Width="495px" Height="78px"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnappoint" runat="server" Text="BOOK APPOINTMENT" />
            <asp:Label ID="lblConfirmation" runat="server"></asp:Label>
            <br />
            <br />
        </div>
            </div>
        <asp:CheckBox ID="CheckAPPT" runat="server" AutoPostBack="True" Text="Show inserted appointmrnt" />
        <asp:GridView ID="GridAPPT" runat="server" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString5 %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [Appointment]"></asp:SqlDataSource>
        <div>
            <h2>Insert/Update Appointment Status</h2>
            <asp:TextBox ID="txtAppointmentID" runat="server" Placeholder="Enter Appointment ID"></asp:TextBox>
            <asp:DropDownList ID="ddlStatus" runat="server">
                <asp:ListItem Text="Waiting" Value="Waiting"></asp:ListItem>
                <asp:ListItem Text="Missed" Value="Missed"></asp:ListItem>
                <asp:ListItem Text="Successful" Value="Successful"></asp:ListItem>
            </asp:DropDownList>
            <div>
                <asp:Button ID="Insertstatus" runat="server" Text="Insert Status" OnClick="btnInsert_Click" />
                <asp:Button ID="Updatestatus" runat="server" Text="Update Status" OnClick="btnUpdate_Click" />

                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
            <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Text="Show inserted status"  />
            <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PRENATALUOGConnectionString6 %>" ProviderName="<%$ ConnectionStrings:PRENATALUOGConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [appointment_status]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
        </div>
</asp:Content>

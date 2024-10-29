<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/pregnantwomen/pregnant.Master" CodeBehind="dailycheckin.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.dailycheckin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="daily.css" rel="stylesheet" />
    <link href="premaster.css" rel="stylesheet" />

    <asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label>
       <div class="description-container">
    <h3>Daily Health Check-In Instructions</h3>
    <p>
     ዕለታዊ የጤና ምርመራው እንደ ሙቀት፣ የደም ግፊት፣ የልብ ምት እና ስሜት ያሉ ቁልፍ የጤና አመልካቾችን ለመከታተል እንዲረዳዎ ታስቦ የተዘጋጀ ነው። 
     እነዚህ ዝርዝሮች ለደህንነትዎ ጠቃሚ ግንዛቤዎችን ይሰጣሉ እና እርስዎ እና የጤና እንክብካቤ አቅራቢዎ በእርስዎ ሁኔታ ላይ ስላለ ማንኛውም ለውጥ እንዲያውቁ ያረጋግጣሉ።
 </p>
    <p>
    እባክዎ እያንዳንዱን ክፍል በጥንቃቄ ይሙሉ። ያልተለመዱ ምልክቶችን ካዩ፣ የጤና እንክብካቤ አቅራቢዎን ማግኘት ያስቡበት። 
    መደበኛ ክትትል ጤናማ እርግዝናን ለመጠበቅ ከፍተኛ ሚና ይጫወታል.
</p>
<p>
    ማናቸውም ጥያቄዎች ካሉዎት ወይም እርዳታ ከፈለጉ፣ ለእርዳታ የድጋፍ ቡድኑን ለማነጋገር አያመንቱ።
</p>
</div>
   
    <h2>ዕለታዊ የጤና ምርመራ/Daily Health Check-In</h2>
    
    <div class="form-group">
    <asp:HiddenField ID="hfUsername" runat="server" />

        <label for="ddlTemperature">የሙቀት መጠን (° ሴ)/Temperature (°C):</label>
        <asp:DropDownList ID="ddlTemperature" runat="server" CssClass="form-control" required="">
            <asp:ListItem Value="">Select</asp:ListItem>
            <asp:ListItem Value="36.0">36.0</asp:ListItem>
            <asp:ListItem Value="36.5">36.5</asp:ListItem>
            <asp:ListItem Value="37.0">37.0</asp:ListItem>
            <asp:ListItem Value="37.5">37.5</asp:ListItem>
            <asp:ListItem Value="38.0">38.0</asp:ListItem>
           
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label for="ddlBloodPressure">የደም ግፊት (ሚሜ ኤችጂ)/Blood Pressure (mmHg):</label>
        <asp:DropDownList ID="ddlBloodPressure" runat="server" CssClass="form-control" required="">
            <asp:ListItem Value="">Select</asp:ListItem>
            <asp:ListItem Value="90/60">90/60</asp:ListItem>
            <asp:ListItem Value="100/70">100/70</asp:ListItem>
            <asp:ListItem Value="110/80">110/80</asp:ListItem>
            <asp:ListItem Value="120/80">120/80</asp:ListItem>
            <asp:ListItem Value="130/90">130/90</asp:ListItem>
           
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label for="ddlHeartRate">የልብ ምት (ደቂቃ)/Heart Rate (bpm):</label>
        <asp:DropDownList ID="ddlHeartRate" runat="server" CssClass="form-control" required="">
            <asp:ListItem Value="">Select</asp:ListItem>
            <asp:ListItem Value="60">60</asp:ListItem>
            <asp:ListItem Value="70">70</asp:ListItem>
            <asp:ListItem Value="80">80</asp:ListItem>
            <asp:ListItem Value="90">90</asp:ListItem>
            <asp:ListItem Value="100">100</asp:ListItem>
        
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label for="ddlBloodSugar">የደም ስኳር (ሚግ/ዲኤል)/Blood Sugar (mg/dL):</label>
        <asp:DropDownList ID="ddlBloodSugar" runat="server" CssClass="form-control" required="">
            <asp:ListItem Value="">Select</asp:ListItem>
            <asp:ListItem Value="70">70</asp:ListItem>
            <asp:ListItem Value="80">80</asp:ListItem>
            <asp:ListItem Value="90">90</asp:ListItem>
            <asp:ListItem Value="100">100</asp:ListItem>
            <asp:ListItem Value="110">110</asp:ListItem>
           
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label for="ddlMood">ስሜት/Mood:</label>
        <asp:DropDownList ID="ddlMood" runat="server" CssClass="form-control" required="">
            <asp:ListItem Value="">Select</asp:ListItem>
            <asp:ListItem Value="Happy">Happy</asp:ListItem>
            <asp:ListItem Value="Neutral">Neutral</asp:ListItem>
            <asp:ListItem Value="Sad">Sad</asp:ListItem>
        </asp:DropDownList>
    </div>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
    <asp:Label ID="lblMessage" runat="server" Font-Bold="true" Font-Italic="true"></asp:Label>
</asp:Content>

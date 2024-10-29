<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/docstaff/doc.Master" CodeBehind="Updateprofiledoc.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.Updateprofiledoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
function calculateDateOfBirth() {
    var age = document.getElementById('<%= txtAge.ClientID %>').value;
    if (age) {
        var today = new Date();
        var birthYear = today.getFullYear() - age;
        var birthDate = new Date(birthYear, today.getMonth(), today.getDate());
        document.getElementById('<%= txtDateOfBirth.ClientID %>').value = birthDate.toISOString().split('T')[0];
    }
}
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="update.css" rel="stylesheet" />
    <br /> <br /> <br />
                    <div class="update-container" style="font-weight: bold; text-transform: capitalize">
                            <asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label>

            <h2>Update Profile</h2>
            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtMiddleName">Middle Name:</label>
                <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </div>
                    <div class="form-group">
    <label for="">Sex:</label>
    <asp:DropDownList ID="ddlsex" runat="server">
        <asp:ListItem Text="Please select location" Value=""></asp:ListItem>
        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
    </asp:DropDownList>
</div>
            
                   
                    <div class="form-group">
    <label for="txtemail">Email:</label>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
</div>
            
            <div class="form-group">
                <label for="txtDateOfBirth">Date of Birth:</label>
                <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtAge">Age:</label>
                <asp:TextBox ID="txtAge" runat="server" onkeyup="calculateDateOfBirth();"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ddlWereda">Wereda:</label>
                <asp:DropDownList ID="ddlWereda" runat="server">
                    <asp:ListItem Text="Please select location" Value=""></asp:ListItem>
                    <asp:ListItem Text="Azezo" Value="Azezo"></asp:ListItem>
                    <asp:ListItem Text="Maraki" Value="Maraki"></asp:ListItem>
                    <asp:ListItem Text="Arada" Value="Arada"></asp:ListItem>
                    <asp:ListItem Text="Piyasa" Value="Piyasa"></asp:ListItem>
                </asp:DropDownList>
            </div>
           <div class="form-group">
    <label for="ddlnationality">Nationality:</label>
    <asp:DropDownList ID="ddlnationality" runat="server">
        <asp:ListItem Text=" " Value=""></asp:ListItem>
        <asp:ListItem Text="Ethiopia" Value="ethiopia"></asp:ListItem>
        <asp:ListItem Text="Other" Value="other"></asp:ListItem>
    </asp:DropDownList>
</div>

            <div class="form-group">
                <label for="DropDownList4">Kebele:</label>
                <asp:DropDownList ID="ddlkebele" runat="server">
                    <asp:ListItem Text="Please select" Value=""></asp:ListItem>
                    <asp:ListItem Text="01" Value="01"></asp:ListItem>
                    <asp:ListItem Text="02" Value="02"></asp:ListItem>
                    <asp:ListItem Text="03" Value="03"></asp:ListItem>
                    <asp:ListItem Text="04" Value="04"></asp:ListItem>
                    <asp:ListItem Text="05" Value="05"></asp:ListItem>
                    <asp:ListItem Text="06" Value="06"></asp:ListItem>
                    <asp:ListItem Text="07" Value="07"></asp:ListItem>
                    <asp:ListItem Text="08" Value="08"></asp:ListItem>
                    <asp:ListItem Text="09" Value="09"></asp:ListItem>
                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                </asp:DropDownList>
            </div>
           <div class="form-group">
          <label for="ddlspecialized">specialized or admin:</label>
                    <asp:DropDownList ID="ddlspecialized" runat="server" autocomplete="off">
                    <asp:ListItem Text= "please select" Value=""></asp:ListItem>
                    <asp:ListItem Text="specialized " Value="specialized"></asp:ListItem>
                    <asp:ListItem Text="sub specialized" Value="sub specialized"></asp:ListItem>
                    <asp:ListItem Text="midwifwery" Value="midwifwery"></asp:ListItem>
                    <asp:ListItem Text="admin" Value="admin"></asp:ListItem>


              </asp:DropDownList>
               </div>
            
           
            <div class="form-group">
                <label for="txtPhone">Phone:</label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </div>
           
                <div class="form-group">
                <asp:Button ID="btnupdate" runat="server" Text="UPDATE" />
                                                <asp:Label ID="updatemessage" runat="server" Text=""></asp:Label>

                    </div>
                        </div>
</asp:Content>

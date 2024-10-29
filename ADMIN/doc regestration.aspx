<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ADMIN/Admin.Master" CodeBehind="doc regestration.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.doc_regestration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="doc%20regstration.css" rel="stylesheet" />
    <div class="fieldset-container">
                      <fieldset><legend style="font-weight: bold; font-size: large; color: #006666" >LOGIN DETAIL </legend>
          <div class="container ">
          <table style="font-family:'Cambria, Cochin, Georgia, Times, Times New Roman, serif'; font-size:larger; font-weight:200">
        <tr>

    <td style="font-family: 'Times New Roman'; font-weight: bold; text-transform: capitalize">User Name</td>
    <td style="width: 535px">
        <asp:TextBox ID="txtname" runat="server" autocomplete="off"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="user name is requierd" ControlToValidate="txtname" Forecolor="RED" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:LinkButton ID="CheckAvailability" runat="server"  Text="CheckAvailability">
            
        </asp:LinkButton>
         </td>
</tr>
                                            
    <tr><td style="font-family: 'Times New Roman'; font-weight: bold; text-transform: capitalize">password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td><td style="width: 535px">
    <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" autocomplete="off"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" ErrorMessage="please enter password" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator></td>
        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword"  ErrorMessage="Password must be 4-20 characters" ForeColor="RED" ValidationExpression="^.{4,20}$"></asp:RegularExpressionValidator>
        
                         </td></tr>
                                     
    <tr><td style="font-family: 'Times New Roman'; font-weight: bold; text-transform: capitalize">verify password</td><td style="width: 535px">
    <asp:TextBox ID="txtpass" TextMode="Password" runat="server" autocomplete="off"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpass" ErrorMessage="password mismatch" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator> </td></tr>
        <tr><td style="font-family: 'Times New Roman'; font-weight: bold; text-transform: capitalize">RoleAttribute</td><td style="width: 535px">
            <asp:DropDownList ID="txtRole" runat="server" autocomplete="off">
            <asp:ListItem Text=" " Value=""></asp:ListItem>
            <asp:ListItem Text="doc-staff" Value="docstaff"></asp:ListItem>
            <asp:ListItem Text="admin" Value="admin"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RoleValidator" runat="server" ControlToValidate="txtRole" ErrorMessage="Please select a role" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
             </table>
              </div>
              </fieldset>
                     <fieldset><legend style="font-weight: bold; text-transform: capitalize; color: #006666; font-size: large">REGISTRATION FORM</legend>
<table  style="font-family:'Cambria, Cochin, Georgia, Times, Times New Roman, serif'; font-size:large; font-weight:200">
                <tr>
    <td style="text-transform: capitalize; font-weight: bold;">User Name</td>
    <td>
        <asp:TextBox ID="TextBox6" runat="server" autocomplete="off"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="User name is required" ControlToValidate="TextBox6" ForeColor="RED" ValidationGroup="g1"></asp:RequiredFieldValidator>
    </td>
</tr>
                    <tr><td style="text-transform: capitalize; font-weight: bold;">First Name</td><td>
            <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter your name" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
                              </td></tr>
            <tr><td style="text-transform: capitalize; font-weight: bold;">Middle Name</td><td>
<asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter your fathername" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
                  </td></tr>
            <tr><td style="text-transform: capitalize; font-weight: bold;">Last Name</td><td>
<asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter your sirname" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
                  </td></tr>
                <tr><td style="text-transform: capitalize; font-weight: bold;">Email</td><td>
<asp:TextBox ID="TextBox5" runat="server" autocomplete="off"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter your email" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
                  </td></tr>
        <tr><td style="text-transform: capitalize; font-weight: bold;">Sex</td><td>
            <asp:DropDownList ID="DropDownList1" runat="server" autocomplete="off">
                <asp:ListItem Text=" " Value=""></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" ErrorMessage="please select sex" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
             </td></tr>
                <tr>
    <td style="text-transform: capitalize; font-weight: bold;">Date of Birth</td>
    <td>
        <asp:TextBox ID="txtDOB" runat="server" placeholder="MM/DD/YYYY" onchange="calculateAge()" autocomplete="off"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtDOB" ErrorMessage="please select sex" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
    <td style="text-transform: capitalize; font-weight: bold;">Age</td>
    <td>
        <asp:TextBox ID="txtAge" runat="server" autocomplete="off" onchange="calculateDOB()"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtAge" ErrorMessage="please select age" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>

    </td>
</tr>

<script type="text/javascript">
    function calculateAge() {
        var dobTextBox = document.getElementById('<%= txtDOB.ClientID %>');
        var ageTextBox = document.getElementById('<%= txtAge.ClientID %>');

        // Get the value of the DOB TextBox
        var dobValue = dobTextBox.value;
        
        if (!dobValue) {
            ageTextBox.value = ''; // Clear age if DOB is not provided
            return;
        }

        // Calculate the age
        var today = new Date();
        var birthDate = new Date(dobValue);
        var age = today.getFullYear() - birthDate.getFullYear();
        var monthDiff = today.getMonth() - birthDate.getMonth();
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }
        // Update the Age TextBox with the calculated age
        ageTextBox.value = age;
    }

    function calculateDOB() {
        var ageTextBox = document.getElementById('<%= txtAge.ClientID %>');
        var dobTextBox = document.getElementById('<%= txtDOB.ClientID %>');

        // Get the value of the Age TextBox
        var ageValue = ageTextBox.value;

        if (!ageValue) {
            dobTextBox.value = ''; // Clear DOB if age is not provided
            return;
        }

        // Calculate the DOB
        var today = new Date();
        var birthYear = today.getFullYear() - ageValue;
        var birthDate = new Date(birthYear, today.getMonth(), today.getDate());

        // Format the DOB as MM/DD/YYYY
        var formattedDOB = (birthDate.getMonth() + 1) + '/' + birthDate.getDate() + '/' + birthDate.getFullYear();

        // Update the DOB TextBox with the calculated DOB
        dobTextBox.value = formattedDOB;
    }
</script>


        <tr><td style="text-transform: capitalize; font-weight: bold;">Nationality</td><td>
        <asp:DropDownList ID="DropDownList3" runat="server" autocomplete="off">
    <asp:ListItem Text= "please select" Value=""></asp:ListItem>
    <asp:ListItem Text="ethiopia" Value="ethiopia"></asp:ListItem>
    <asp:ListItem Text="other" Value="other"></asp:ListItem>
    
</asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList3"  ErrorMessage="please enter your nationality"  ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
           </td></tr>
        <tr>
    <td style="text-transform: capitalize; font-weight: bold;">Zone/Sub-City/Wereda</td>
    <td>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Text="Please select location" Value=""></asp:ListItem>
            <asp:ListItem Text="Azezo" Value="Azezo"></asp:ListItem>
            <asp:ListItem Text="Maraki" Value="Maraki"></asp:ListItem>
            <asp:ListItem Text="Arada" Value="Arada"></asp:ListItem>
            <asp:ListItem Text="Piyasa" Value="Piyasa"></asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Please enter your wereda" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
    </td>
</tr>
                <tr>
    <td style="text-transform: capitalize; font-weight: bold;">Kebele</td>
    <td>
        <asp:DropDownList ID="DropDownList8" runat="server" autocomplete="off">
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList8" ErrorMessage="Please enter your kebele" ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
    </td>
</tr>
            <tr><td style="text-transform: capitalize; font-weight: bold;">Specialized </td><td>
        <asp:DropDownList ID="DropDownList4" runat="server" autocomplete="off">
    <asp:ListItem Text= "please select" Value=""></asp:ListItem>
    <asp:ListItem Text="specialized " Value="specialized"></asp:ListItem>
    <asp:ListItem Text="sub specialized" Value="sub specialized"></asp:ListItem>
    <asp:ListItem Text="midwifwery" Value="midwifwery"></asp:ListItem>
   <asp:ListItem Text="admin" Value="admin"></asp:ListItem>


   </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList3"  ErrorMessage="please enter your status"  ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
           </td></tr>
             <tr><td style="text-transform: capitalize; font-weight: bold;">Phone</td><td>
            <asp:TextBox ID="txtphone" runat="server" autocomplete="off"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="please enter your  number "  ForeColor="RED" ValidationGroup="g2"></asp:RequiredFieldValidator>
            
         </td></tr>
    
 <tr><td style="text-transform: capitalize; font-weight: bold;"></td> <td><asp:Button ID="Register" runat="server" Text="Register" BackColor="#666699" BorderColor="#999966" BorderStyle="Double" Height="37px" Width="123px" /></td></tr>
    <tr><td style="text-transform: capitalize; font-weight: bold;"></td><td>
        <asp:Label ID="Label1" runat="server"  Font-Bold="true" ForeColor="green" Font-Italic="true"></asp:Label></td></tr>
    </table></fieldset>
        </div>
</asp:Content>

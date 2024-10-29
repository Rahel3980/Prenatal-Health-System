<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="register all.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.register_all" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br><br><br><br> 
         <main>
             <link href="register%20all.css" rel="stylesheet" />
              <br><br><br><br> <br><br><br><br>
    <section class="row" aria-labelledby="photoAndCategoriesTitle">

        <div class="col-md-12">
          
            <h1 id="photoAndCategoriesTitle" class="text-center">Welcome to Prenatal Care</h1>
            <div class="row">
                <div class="col-md-6">
                    <h2>Pregnant Women</h2>
                    <div class="col-md-6">
              <img src="image/pre 1.jpg" alt="Prenatal Care" class="img-fluid">
                        
              </div>
                    <p>If you are pregnant, click below to login:</p>
                    <p><a href="registerpregnantwomen.aspx" class="btn btn-primary btn-md">register for Pregnant Women &raquo;</a></p>
                </div>
               
            </div>
        </div>
    </section>

    <!-- Other sections for prenatal care content -->
    <div class="row">
        <section class="col-md-4" aria-labelledby="nutritionTitle">
            <!-- Nutrition content -->
        </section>
        <section class="col-md-4" aria-labelledby="exerciseTitle">
            <!-- Exercise content -->
        </section>
        <section class="col-md-4" aria-labelledby="emotionalSupportTitle">
            <!-- Emotional support content -->
        </section>
    </div>
</main>

</asp:Content>

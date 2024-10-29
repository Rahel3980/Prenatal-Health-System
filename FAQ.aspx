<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FAQ.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>


    <link href="FAQ.css" rel="stylesheet" />
    <script type="text/javascript">
        function toggleAnswer(event) {
            var answer = event.target.nextElementSibling;
            if (answer.style.display === "none") {
                answer.style.display = "block";
            } else {
                answer.style.display = "none";
            }
        }
    </script>
   
    <div class="faq-container" style="margin-top: 100px;">
        <h1 >በተደጋጋሚ የሚጠየቁ ጥያቄዎች (FAQ)</h1>

        <div class="faq-item">
            <h2 onclick="toggleAnswer(event)">What is prenatal care?</h2>
            <p style="display:none;">Prenatal care is the health care a woman receives during pregnancy to ensure both the mother and baby remain healthy. It includes regular check-ups, health assessments, and nutritional guidance.</p>

            <h2 onclick="toggleAnswer(event)">ቅድመ ወሊድ እንክብካቤ ምንድነው?</h2>           
<p style="display:none;">ቅድመ ወሊድ እንክብካቤ አንዲት ሴት በእርግዝና ወቅት የምታገኘው የጤና እንክብካቤ እናት እና ሕፃን ጤናማ ሆነው እንዲቀጥሉ ነው። መደበኛ ምርመራዎችን፣ የጤና ግምገማዎችን እና የአመጋገብ መመሪያዎችን ያካትታል።</p>        </div>

        <div class="faq-item">
            <h2 onclick="toggleAnswer(event)">When should I start prenatal care?</h2>
                        <p style="display:none;">It’s best to start prenatal care as soon as you find out you're pregnant. Early and regular visits to a healthcare provider are important for monitoring the health of both mother and baby.</p>

            <h2 onclick="toggleAnswer(event)">የቅድመ ወሊድ እንክብካቤ መቼ መጀመር አለብኝ?</h2> 
            <p style="display:none;">እርጉዝ መሆንዎን እንዳወቁ የቅድመ ወሊድ እንክብካቤን መጀመር ጥሩ ነው። የእናትን እና የህፃኑን ጤና ለመከታተል ቀደምት እና መደበኛ የጤና እንክብካቤ አቅራቢን መጎብኘት አስፈላጊ ነው።</p>
        </div>

        <div class="faq-item">
            <h2 onclick="toggleAnswer(event)">What should I expect during prenatal check-ups?</h2>
            <p style="display:none;">During prenatal visits, your healthcare provider will check your blood pressure, weight, and the baby’s growth and development. You will also undergo tests and receive advice on nutrition and exercise.</p>

            <h2 onclick="toggleAnswer(event)">በቅድመ ወሊድ ምርመራ ወቅት ምን መጠበቅ አለብኝ?</h2>
            <p style="display:none;">በቅድመ ወሊድ ጉብኝት ወቅት፣ የጤና እንክብካቤ አቅራቢዎ የእርስዎን የደም ግፊት፣ ክብደት እና የሕፃኑን እድገት እና እድገት ይቆጣጠራል። እንዲሁም ምርመራዎችን ታደርጋላችሁ እና ስለ አመጋገብ እና የአካል ብቃት እንቅስቃሴ ምክር ያገኛሉ።</p>
        </div>

        <div class="faq-item">
            <h2 onclick="toggleAnswer(event)">Can I continue exercising during pregnancy?</h2>
           <p style="display:none;">Yes, but you should consult your healthcare provider about the types of exercises that are safe. Regular physical activity can help reduce stress, improve circulation, and promote a healthy pregnancy.</p>

            <h2 onclick="toggleAnswer(event)">በእርግዝና ወቅት የአካል ብቃት እንቅስቃሴ ማድረግ እችላለሁን?</h2>
            <p style="display:none;">አዎ፣ ነገር ግን ደህንነታቸው የተጠበቀ የአካል ብቃት እንቅስቃሴዎችን በተመለከተ የጤና እንክብካቤ አቅራቢዎን ማማከር አለብዎት። መደበኛ የአካል ብቃት እንቅስቃሴ ጭንቀትን ለመቀነስ፣ የደም ዝውውርን ለማሻሻል እና ጤናማ እርግዝናን ለማበረታታት ይረዳል።</p>
        </div>

        <div class="faq-item">
            <h2 onclick="toggleAnswer(event)">What is the importance of folic acid during pregnancy?</h2>
                        <p style="display:none;">Folic acid helps prevent neural tube defects in the developing baby. It's recommended that women start taking folic acid supplements before conception and continue throughout pregnancy.</p>

            <h2 onclick="toggleAnswer(event)">በእርግዝና ወቅት የፎሊክ አሲድ ጠቀሜታ ምንድነው?</h2>
            <p style="display:none;">ፎሊክ አሲድ በማደግ ላይ ባለው ህጻን ላይ የነርቭ ቱቦ ጉድለቶችን ይከላከላል። ሴቶች ከመፀነሱ በፊት ፎሊክ አሲድ ተጨማሪ መድሃኒቶችን መውሰድ እንዲጀምሩ እና በእርግዝና ወቅት እንዲቀጥሉ ይመከራል።</p>
        </div>
    </div>
        
</asp:Content>

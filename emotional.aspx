<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="emotional.aspx.vb" Inherits="UOG_Comprensive_Specialized_hospital_prenatal_care_service.emotional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <!DOCTYPE html>
<html  >
<head >
    <title>Understanding Prenatal Care Service</title>
          <style>
        body {
            background-color: transparent;
            font-family: Arial, sans-serif;
            margin: 20px;
            color:indigo;
        }

        h1, h2 {
            color: Black;
            margin-bottom: 10px;
        }

        p {
            line-height: 1.8;
            margin-bottom: 15px;
        }

        ul {
            list-style-type: square;
            margin-left: 20px;
        }

        li {
            margin-bottom: 10px;
            padding: 5px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        li:hover {
            background-color: #e0f7fa;
        }

        .main-content {
    display: flex;
    gap: 20px; /* Space between items */
    margin-top: 70px;
    /* Ensure that both sections have equal height */
    align-items: stretch; /* This makes all children of the flex container stretch to equal height */
}

/* Styling for each section */
.section {
    flex: 1; /* Grow to fill available space */
    min-width: 300px; /* Minimum width of each section */
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color:powderblue;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.media-content img {
    width: 100%;
    height: auto;
    border: 1px solid #333;
    border-radius: 8px;
    object-fit: cover; /* Ensure the image covers the container */
}
.media-content video {
    width: 100%; /* Full width of the container */
    height: auto; /* Maintain aspect ratio */
    border-radius: 8px;
    border: 1px solid #333;
}


/* Responsive layout for smaller screens */
@media (max-width: 768px) {
    .main-content {
        flex-direction: column; /* Stack items vertically on small screens */
    }
}
    </style>
</head>
<body>
<h1>በእርግዝና ወቅት ሴቶች ለምን ስሜታዊ ድጋፍ ያስፈልጋቸዋል?</h1>
   <div class="main-content">
         <div class="section media-content">
          <asp:Image ID="Imag" runat="server" ImageUrl="~/images (2).jpg" AlternateText="what-to-eat-during-pregnancy" Width="100%" object-fit="cover" CssClass="transparent-border" />
            <p >በሴቶች ሕይወት ውስጥ በጣም ወሳኝ ነገር ግን ብዙውን ጊዜ ችላ ከተባለው ነገር አንዱ በእርግዝና ወቅት እና ከእርግዝና በኋላ ያለው ጊዜ ነው. እርግዝና የሴቷ አካል በማይታመን ሁኔታ ለውጦች ውስጥ ሲያልፍ እና ብዙ ስሜታዊ እና አካላዊ ድጋፍ ሲፈልግ ነው። እንደ አለመታደል ሆኖ ብዙ ሴቶች የሚያስፈልጋቸውን ድጋፍ አያገኙም። ይሁን እንጂ ሴቶች በእርግዝና ወቅት እና በእርግዝና ወቅት ስሜታዊ ድጋፍ ሊኖራቸው ይገባል. ሴቶች ከደስታ እና ከደስታ እስከ ፍርሃት እና ጭንቀት ድረስ የተለያዩ ስሜቶች ይሰማቸዋል። በእርግዝና ወቅት የተለያዩ ስሜቶችን ማስተናገድ ሙሉ በሙሉ የተለመደ ነው።  </p >
            <p>ብዙ አዲስ እና በቅርቡ የሚወለዱ እናቶች በእርግዝና ወቅት እና ከእርግዝና በኋላ ትልቅ ሃላፊነት ይሰማቸዋል። ራሳቸውን፣ ሕፃኑን እና ቤታቸውን መንከባከብ - ልዕለ ሴት መሆን እንደሚያስፈልጋቸው ሊሰማቸው ይችላል። አንዲት ሴት የጭንቀት ስሜት እንዲሰማት, ከአቅም በላይ እንድትሆን እና ያልተደገፈ እንዲሰማት ሊያደርግ ይችላል.</p> 
             <p>አጋሮች፣ ጓደኞች እና የቤተሰብ አባላት ለነፍሰ ጡር ሴቶች እና አዲስ እናቶች ስሜታዊ ድጋፍ ለመስጠት ወሳኝ ሊሆኑ ይችላሉ። ሰዎቹ ሰሚ ጆሮ ሊሰጡ፣ ጠቃሚ መረጃዎችን ሊያካፍሉ እና ሲያስፈልግ እጅ መስጠት ይችላሉ። ነፍሰ ጡር ሴቶች ዘና ለማለት እና ለማደስ ለራሳቸው የተወሰነ ጊዜ ሊወስዱ ይገባል. በአካል ብቃት እንቅስቃሴ፣ በዮጋ፣ በማሰላሰል ወይም በቀላሉ ከቤት ውጭ ጊዜን በተፈጥሮ ውስጥ በማሳለፍ ሊከናወን ይችላል።</p>  
            <p>ሴቶች በእርግዝና ወቅት እና ከእርግዝና በኋላ የሚያስፈልጋቸውን ድጋፍ ሲያገኙ በሕይወታቸው ውስጥ የተወሰነውን ጊዜ የመደሰት እድላቸው ሰፊ ነው። በተጨማሪም አዲሷን እናት የሚያጋጥሟቸውን ፈተናዎች ለመቋቋም በተሻለ ሁኔታ የታጠቁ ይሆናሉ። ለምን አስፈለገ?</p>
            <ul>
                <li>በእርግዝና ወቅት ስሜታዊ ድጋፍ ለእናት እና ለልጁ ጤና በጣም አስፈላጊ ነው.</li>
                <li>ጥናቶች እንደሚያሳዩት የስሜት ድጋፍ የሚያገኙ ነፍሰ ጡር እናቶች በእርግዝናቸው ወቅት የሚያጋጥሟቸው ችግሮች አነስተኛ እና ጤናማ ልጆችን ይወልዳሉ።</li>
                <li>ስሜታዊ ድጋፍ የሌላቸው ነፍሰ ጡር እናቶች ለጭንቀት፣ ለጭንቀት እና ለድብርት የመጋለጥ እድላቸው ከፍተኛ ሲሆን ይህም በእናቲቱ እና በልጅ ላይ የጤና እክል ያስከትላል።</li>
                <li>ከቤተሰብ፣ ከጓደኞች ወይም ከቴራፒስት የሚደረግ ስሜታዊ ድጋፍ ነፍሰ ጡር ሴቶች የበለጠ ደስተኛ እና የበለጠ ዘና እንዲሉ ይረዳቸዋል ይህም ህፃኑን ይጠቅማል።</li>
                <li>መደበኛ ስሜታዊ ድጋፍ የሚያገኙ ነፍሰ ጡር እናቶችም ጨቅላ ልጃቸውን የማጥባት እድላቸው ሰፊ ሲሆን ይህም እናትና ልጅን ይጠቅማል። በአጭሩ ስሜታዊ ድጋፍ ለእናት እና ለልጁ ደህንነት አስፈላጊ ነው።</li>
            </ul>
            <p>አንዲት ሴት ነፍሰ ጡር ስትሆን ብዙ ለውጦችን ታደርጋለች - በአካል እና በስሜታዊነት. ብዙውን ጊዜ እነዚህ ለውጦች በጣም ከባድ ሊሆኑ ይችላሉ, እና እርጉዝ ሴቶች ለእርዳታ የሚተማመኑበት ሰው ሊኖራቸው ይገባል. እዚህ ነው ሐኪሞች የሚመጡት።</p>
          </div>
       </div>
</body>
</html>
 

</asp:Content>

Imports System.Data.SqlClient
Imports System.IO
Imports SelectPdf

Public Class Report
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1))
        Response.Cache.SetNoStore()
        If Not IsPostBack Then
            If Session("name") IsNot Nothing Then
                Dim username As String = Session("name").ToString()
                Session.Timeout = 20
            Else
                ' Redirect to login page if session is not set
                Response.Redirect("~/loginall.aspx")
            End If
        End If
        If Not IsPostBack Then
            divMedicalHistory.Visible = False
            LoadAppointmentCounts()

        End If
    End Sub
    Private Sub LoadAppointmentCounts()
        ' 1. Database Connection String
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"

        ' 2. SQL Query
        Dim sqlQuery As String = "SELECT Status, COUNT(*) AS AppointmentCount " &
                                 "FROM appointment_status " &
                                 "GROUP BY Status"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(sqlQuery, connection)
                connection.Open()
                Using reader As SqlDataReader = command.ExecuteReader()
                    While reader.Read()
                        Dim status As String = reader("Status").ToString()
                        Dim count As Integer = CInt(reader("AppointmentCount"))

                        ' 3. Update Label Controls
                        Select Case status
                            Case "Waiting"
                                lblWaitingCount.Text = count.ToString()
                            Case "Successful"
                                lblSuccessfulCount.Text = count.ToString()
                            Case "Missed"
                                lblMissedCount.Text = count.ToString()
                            Case Else
                                ' Handle other statuses or errors if needed
                        End Select
                    End While
                End Using
            End Using
        End Using
    End Sub

    ' Search Button Click Event
    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim pregnantID As String = txtpregnantID.Text.Trim()

        If String.IsNullOrEmpty(pregnantID) Then
            lblMessage.Text = "Please enter a Pregnant ID."
            divMedicalHistory.Visible = False
            Return
        End If

        Try
            Dim dt As DataTable = GetMedicalHistory(pregnantID)

            If dt.Rows.Count > 0 Then
                gvMedicalHistory.DataSource = dt
                gvMedicalHistory.DataBind()
                divMedicalHistory.Visible = True
                lblMessage.Text = ""
            Else
                lblMessage.Text = "No medical history found for this Pregnant ID."
                divMedicalHistory.Visible = False
            End If
        Catch ex As Exception
            lblMessage.Text = "An error occurred: " & ex.Message
            divMedicalHistory.Visible = False
        End Try
    End Sub

    ' Function to retrieve medical history from the database
    Private Function GetMedicalHistory(pregnantID As String) As DataTable
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Dim sql As String = "SELECT * FROM MedicalHistory WHERE PregnantID = @PregnantID"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(sql, connection)
                command.Parameters.AddWithValue("@PregnantID", pregnantID) ' Assuming PregnantID is a string

                Using adapter As New SqlDataAdapter(command)
                    Dim dt As New DataTable()
                    adapter.Fill(dt)
                    Return dt
                End Using
            End Using
        End Using
    End Function

    ' Print Button Click Event
    Protected Sub btnPrint_Click(sender As Object, e As EventArgs) Handles btnPrint.Click
        Try
            ' Create a StringWriter to hold the rendered HTML output
            Dim stringWriter As New StringWriter()
            Dim htmlWriter As New HtmlTextWriter(stringWriter)

            ' Start rendering the content you want in the PDF
            htmlWriter.Write("<html><head>")
            htmlWriter.Write("<link href='https://fonts.googleapis.com/css2?family=Noto+Sans+Ethiopic&display=swap' rel='stylesheet' />")
            htmlWriter.Write("<style>body { font-family: 'Noto Sans Ethiopic', sans-serif; }</style>")
            htmlWriter.Write("</head><body>")
            htmlWriter.Write("<h2>Prenatal care Medical History</h2>")
            htmlWriter.Write("<p>The medical history of prenatal care system user in Gondar University General Hospital Prenatal Care Service</p>")
            htmlWriter.Write("<p>በጎንደር ዩኒቨርሲቲ አጠቃላይ ሆስፒታል የቅድመ ወሊድ አገልግሎት አገልግሎት የቅድመ ወሊድ አገልግሎት ተጠቃሚ የሕክምና ታሪክ</p>")

            ' Render the GridView directly
            gvMedicalHistory.RenderControl(htmlWriter)

            htmlWriter.Write("</body></html>")

            ' Get the complete HTML content from the StringWriter
            Dim htmlContent As String = stringWriter.ToString()

            ' Create a new HtmlToPdf converter instance
            Dim converter As New HtmlToPdf()

            ' Convert the HTML string to PDF
            Dim pdf As PdfDocument = converter.ConvertHtmlString(htmlContent)

            ' Set the content type to PDF and prompt download
            Response.ContentType = "application/pdf"
            Response.AddHeader("content-disposition", "attachment;filename=MedicalHistoryReport.pdf")
            Response.Cache.SetCacheability(HttpCacheability.NoCache)

            ' Write the PDF to the response output stream
            pdf.Save(Response.OutputStream)

            ' Close the PDF document
            pdf.Close()

            ' End the response to send the PDF file to the client
            Response.End()

        Catch ex As Exception
            lblMessage.Text = "An error occurred while generating the PDF: " & ex.Message
        End Try
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(control As Control)
        ' This method is necessary to allow the GridView to be rendered as part of a PDF.
        ' No additional logic is needed here.
    End Sub

End Class

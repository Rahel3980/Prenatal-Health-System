Imports System.Data.SqlClient

Public Class medicalhistory
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1))
        Response.Cache.SetNoStore()
        If Not IsPostBack Then
            If Session("name") IsNot Nothing Then
                Dim username As String = Session("name").ToString()
                lblwelcome.Text = "Welcome Dear User, " & username
                Session.Timeout = 20

                ' Store the username in the session
                Session("UserName") = username

                Try
                    ' Retrieve and store SpecializedOrAdmin in the session
                    Using conn As New SqlConnection("Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;")
                        Using cmd As New SqlCommand("SELECT SpecializedOrAdmin FROM docORadminDetails WHERE UserName = @UserName", conn)
                            cmd.Parameters.AddWithValue("@UserName", username)
                            conn.Open()

                            Dim specializedOrAdmin As String = Convert.ToString(cmd.ExecuteScalar())

                            ' Check if the result is not null or empty
                            If Not String.IsNullOrEmpty(specializedOrAdmin) Then
                                Session("SpecializedOrAdmin") = specializedOrAdmin
                            Else
                                lblmessage.Text = "SpecializedOrAdmin data not found for the current user."
                                lblmessage.ForeColor = System.Drawing.Color.Red
                            End If
                        End Using
                    End Using
                Catch ex As Exception
                    lblmessage.Text = "An error occurred while retrieving SpecializedOrAdmin data: " & ex.Message
                    lblmessage.ForeColor = System.Drawing.Color.Red
                End Try
            Else
                ' Redirect to login page if session is not set
                Response.Redirect("~/loginall.aspx")
            End If
        End If
    End Sub



    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        InsertMedicalHistory()
    End Sub
    Private Sub InsertMedicalHistory()
        Try
            ' Retrieve session variables
            Dim username As String = TryCast(Session("UserName"), String)
            Dim specializedOrAdmin As String = TryCast(Session("SpecializedOrAdmin"), String)

            ' Validate that session variables are not null
            If String.IsNullOrEmpty(username) OrElse String.IsNullOrEmpty(specializedOrAdmin) Then
                lblmessage.Text = "User session data is missing. Please log in again."
                lblmessage.ForeColor = System.Drawing.Color.Red
                Return
            End If

            ' Retrieve form values
            Dim pregnantID As Integer
            If Not Integer.TryParse(txtpregnantID.Text, pregnantID) Then
                lblmessage.Text = "Invalid PregnantID input."
                lblmessage.ForeColor = System.Drawing.Color.Red
                Return
            End If

            Dim firstName As String = txtFirstName.Text
            Dim middleName As String = txtMiddleName.Text
            Dim lastName As String = txtLastName.Text

            Dim age As Integer
            If Not Integer.TryParse(txtAge.Text, age) Then
                lblmessage.Text = "Invalid age input."
                lblmessage.ForeColor = System.Drawing.Color.Red
                Return
            End If

            Dim historyDate As Date
            If Not Date.TryParse(txtHistoryDate.Text, historyDate) Then
                lblmessage.Text = "Invalid date input."
                lblmessage.ForeColor = System.Drawing.Color.Red
                Return
            End If

            Dim condition As String = txtCondition.Text
            Dim treatment As String = txtTreatment.Text

            ' Call the stored procedure to insert the data into the database
            Using conn As New SqlConnection("Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;")
                Using cmd As New SqlCommand("InsertMedicalHistory", conn)
                    cmd.CommandType = CommandType.StoredProcedure

                    ' Add parameters to the stored procedure
                    cmd.Parameters.AddWithValue("@PregnantID", pregnantID)
                    cmd.Parameters.AddWithValue("@FirstName", firstName)
                    cmd.Parameters.AddWithValue("@MiddleName", middleName)
                    cmd.Parameters.AddWithValue("@LastName", lastName)
                    cmd.Parameters.AddWithValue("@Age", age)
                    cmd.Parameters.AddWithValue("@HistoryDate", historyDate)
                    cmd.Parameters.AddWithValue("@Condition", condition)
                    cmd.Parameters.AddWithValue("@Treatment", treatment)
                    cmd.Parameters.AddWithValue("@UserName", username)

                    conn.Open()
                    cmd.ExecuteNonQuery()
                End Using
            End Using

            lblmessage.Text = "Medical history submitted successfully."
            lblmessage.ForeColor = System.Drawing.Color.Green
        Catch ex As Exception
            lblmessage.Text = "An error occurred: " & ex.Message
            lblmessage.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked Then
            GridView1.Visible = True
            GridView1.DataBind() ' Ensure GridView is refreshed
        Else
            GridView1.Visible = False
        End If
    End Sub



    Protected Sub checkhistory_checked_changed(sender As Object, e As EventArgs) Handles checkhistory.CheckedChanged
        If checkhistory.Checked Then
            GridView2.Visible = True
            GridView2.DataBind() ' Ensure GridView is refreshed
        Else
            GridView2.Visible = False
        End If
    End Sub
End Class

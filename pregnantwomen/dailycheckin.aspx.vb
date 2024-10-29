Imports System
Imports System.Data.SqlClient
Imports System.Configuration

Public Class dailycheckin
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

                hfUsername.Value = username ' Set the hidden field with the username
            Else
                ' Redirect to login page if session is not set
                Response.Redirect("~/loginall.aspx")
            End If
        End If
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim temperature As String = ddlTemperature.SelectedValue
        Dim bloodPressure As String = ddlBloodPressure.SelectedValue
        Dim heartRate As String = ddlHeartRate.SelectedValue
        Dim bloodSugar As String = ddlBloodSugar.SelectedValue
        Dim mood As String = ddlMood.SelectedValue
        Dim username As String = hfUsername.Value
        System.Diagnostics.Debug.WriteLine("Username from hidden field: " & username)

        ' Validate all fields are selected
        If String.IsNullOrEmpty(temperature) OrElse
           String.IsNullOrEmpty(bloodPressure) OrElse
           String.IsNullOrEmpty(heartRate) OrElse
           String.IsNullOrEmpty(bloodSugar) OrElse
           String.IsNullOrEmpty(mood) Then

            lblMessage.Text = "Please fill out all fields."
            lblMessage.ForeColor = System.Drawing.Color.Red
            Return
        End If

        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"

        Using con As New SqlConnection(connectionString)
            Using cmd As New SqlCommand("InsertDailyCheckIn", con)
                cmd.CommandType = CommandType.StoredProcedure

                ' Add parameters for the stored procedure

                cmd.Parameters.AddWithValue("@UserName", hfUsername.Value)
                cmd.Parameters.AddWithValue("@Temperature", Convert.ToSingle(ddlTemperature.SelectedValue))
                cmd.Parameters.AddWithValue("@BloodPressure", ddlBloodPressure.SelectedValue)
                cmd.Parameters.AddWithValue("@HeartRate", Convert.ToInt32(ddlHeartRate.SelectedValue))
                cmd.Parameters.AddWithValue("@BloodSugar", Convert.ToSingle(ddlBloodSugar.SelectedValue))
                cmd.Parameters.AddWithValue("@Mood", ddlMood.SelectedValue)

                Try
                    con.Open()
                    Dim rowsAffected As Integer = cmd.ExecuteNonQuery()

                    If rowsAffected > 0 Then
                        lblMessage.Text = "Data inserted successfully!"
                        lblMessage.ForeColor = System.Drawing.Color.Green
                    Else
                        lblMessage.Text = "Failed to insert data. Please try again."
                        lblMessage.ForeColor = System.Drawing.Color.Red
                    End If
                Catch ex As SqlException
                    lblMessage.Text = "A SQL error occurred: " & ex.Message
                    lblMessage.ForeColor = System.Drawing.Color.Red
                Catch ex As Exception
                    lblMessage.Text = "An error occurred: " & ex.Message
                    lblMessage.ForeColor = System.Drawing.Color.Red
                End Try
            End Using
        End Using

    End Sub
End Class

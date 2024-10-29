Imports System
Imports System.Data.SqlClient
Imports System.Configuration

Public Class UpdateProfile
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

                LoadProfileData(username)  ' Automatically load profile data on page load
            Else
                ' Redirect to login page if session is not set
                Response.Redirect("~/loginall.aspx")
            End If
        End If
    End Sub

    Private Sub LoadProfileData(username As String)
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Using connection As New SqlConnection(connectionString)
            Dim command As New SqlCommand("SELECT * FROM  UserRegistrationDetails WHERE UserName = @UserName", connection)
            command.Parameters.AddWithValue("@UserName", username)

            connection.Open()
            Dim reader As SqlDataReader = command.ExecuteReader()
            If reader.Read() Then
                txtFirstName.Text = reader("FirstName").ToString()
                txtMiddleName.Text = reader("MiddleName").ToString()
                txtLastName.Text = reader("LastName").ToString()
                txtDateOfBirth.Text = reader("DateOfBirth").ToString()
                txtAge.Text = CalculateAge(reader("DateOfBirth").ToString()).ToString()
                ddlWereda.SelectedValue = reader("Wereda").ToString()
                ddlnationality.SelectedValue = reader("Nationality").ToString()
                ddlkebele.SelectedValue = reader("Kebele").ToString()
                ddlpregnancylevel.SelectedValue = reader("PregnancyLevel").ToString()
                ddlhivstatus.SelectedValue = reader("HIVStatus").ToString()
                ddlOtherTransmittedDiseases.SelectedValue = reader("OtherTransmittedDiseases").ToString()
                ddlCareer.SelectedValue = reader("Career").ToString()
                txtPhone.Text = reader("Phone").ToString()
                txtEmergencyPersonName.Text = reader("EmergencyPersonName").ToString()
                txtEmergencyContact.Text = reader("EmergencyContact").ToString()
            End If
        End Using
    End Sub

    Private Function CalculateAge(dateOfBirth As String) As Integer
        Dim dob As DateTime
        If DateTime.TryParse(dateOfBirth, dob) Then
            Dim today As DateTime = DateTime.Today
            Dim age As Integer = today.Year - dob.Year
            If today < dob.AddYears(age) Then
                age -= 1
            End If
            Return age
        End If
        Return 0
    End Function



    Private Sub UpdateProfileData(username As String)
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Try
            Using connection As New SqlConnection(connectionString)
                Dim command As New SqlCommand("UPDATE UserRegistrationDetails SET FirstName = @FirstName, MiddleName = @MiddleName, LastName = @LastName, DateOfBirth = @DateOfBirth, Age = @Age, Wereda = @Wereda, Nationality = @Nationality, Kebele = @Kebele, PregnancyLevel = @PregnancyLevel, HIVStatus = @HIVStatus, OtherTransmittedDiseases = @OtherTransmittedDiseases, Career = @Career, Phone = @Phone, EmergencyPersonName = @EmergencyPersonName, EmergencyContact = @EmergencyContact WHERE UserName = @UserName", connection)

                command.Parameters.AddWithValue("@FirstName", txtFirstName.Text)
                command.Parameters.AddWithValue("@MiddleName", txtMiddleName.Text)
                command.Parameters.AddWithValue("@LastName", txtLastName.Text)

                ' Ensure the date is parsed correctly
                Dim dob As DateTime
                If DateTime.TryParse(txtDateOfBirth.Text, dob) Then
                    command.Parameters.AddWithValue("@DateOfBirth", dob.ToString("yyyy-MM-dd"))
                Else
                    Throw New Exception("Invalid date format")
                End If

                command.Parameters.AddWithValue("@Age", txtAge.Text)
                command.Parameters.AddWithValue("@Wereda", ddlWereda.SelectedValue)
                command.Parameters.AddWithValue("@Nationality", ddlnationality.SelectedValue)
                command.Parameters.AddWithValue("@Kebele", ddlkebele.SelectedValue)
                command.Parameters.AddWithValue("@PregnancyLevel", ddlpregnancylevel.SelectedValue)
                command.Parameters.AddWithValue("@HIVStatus", ddlhivstatus.SelectedValue)
                command.Parameters.AddWithValue("@OtherTransmittedDiseases", ddlOtherTransmittedDiseases.SelectedValue)
                command.Parameters.AddWithValue("@Career", ddlCareer.SelectedValue)
                command.Parameters.AddWithValue("@Phone", txtPhone.Text)
                command.Parameters.AddWithValue("@EmergencyPersonName", txtEmergencyPersonName.Text)
                command.Parameters.AddWithValue("@EmergencyContact", txtEmergencyContact.Text)
                command.Parameters.AddWithValue("@UserName", username)

                connection.Open()
                Dim rowsAffected As Integer = command.ExecuteNonQuery()
                lblmessage.Text = If(rowsAffected > 0, "Profile updated successfully.", "Profile update failed.")
            End Using
        Catch ex As Exception
            lblmessage.Text = "Error updating profile: " & ex.Message
        End Try
    End Sub

    Protected Sub btnupdate_Click1(sender As Object, e As EventArgs) Handles btnupdate.Click
        Dim username As String = Session("name").ToString()
        UpdateProfileData(username)
    End Sub
End Class

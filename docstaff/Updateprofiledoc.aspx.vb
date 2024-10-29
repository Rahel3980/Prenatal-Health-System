Imports System.Data.SqlClient

Public Class Updateprofiledoc
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

                PopulateDropdowns() ' Populate dropdown lists
                LoadProfileData(username) ' Automatically load profile data on page load
            Else
                ' Redirect to login page if session is not set
                Response.Redirect("~/loginall.aspx")
            End If
        End If
    End Sub
    Protected Sub btnupdate_Click(sender As Object, e As EventArgs) Handles btnupdate.Click
        Dim username As String = Session("name").ToString()
        UpdateProfileData(username)
    End Sub

    Private Sub LoadProfileData(username As String)
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"

        Using conn As New SqlConnection(connectionString)
            Dim cmd As New SqlCommand("SELECT * FROM docORadminDetails WHERE UserName = @UserName", conn)
            cmd.Parameters.AddWithValue("@UserName", username)

            Try
                conn.Open()
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    If reader.Read() Then
                        txtFirstName.Text = reader("FirstName").ToString()
                        txtMiddleName.Text = reader("MiddleName").ToString()
                        txtLastName.Text = reader("LastName").ToString()

                        txtemail.Text = reader("Email").ToString()
                        txtDateOfBirth.Text = Convert.ToDateTime(reader("DateOfBirth")).ToString("MM/dd/yyyy")
                        txtAge.Text = reader("Age").ToString()
                        ddlsex.SelectedValue = reader("Sex").ToString()


                        ddlWereda.SelectedValue = reader("Wereda").ToString()
                        ddlnationality.SelectedValue = reader("Nationality").ToString()
                        ddlkebele.SelectedValue = reader("Kebele").ToString()
                        txtPhone.Text = reader("Phone").ToString()
                        ddlspecialized.SelectedValue = reader("SpecializedOrAdmin").ToString()
                    Else
                        updatemessage.Text = "No profile data found."
                        updatemessage.ForeColor = System.Drawing.Color.Red
                    End If
                End Using
            Catch ex As Exception
                updatemessage.Text = "An error occurred: " & ex.Message
                updatemessage.ForeColor = System.Drawing.Color.Red
            End Try
        End Using
    End Sub

    Private Sub PopulateDropdowns()
        ' Populate ddlWereda
        ddlWereda.Items.Clear()
        ddlWereda.Items.Add(New ListItem("Please select location", ""))
        ddlWereda.Items.Add(New ListItem("Azezo", "Azezo"))
        ddlWereda.Items.Add(New ListItem("Maraki", "Maraki"))
        ddlWereda.Items.Add(New ListItem("Arada", "Arada"))
        ddlWereda.Items.Add(New ListItem("Piyasa", "Piyasa"))

        ' Populate ddlnationality
        ddlnationality.Items.Clear()
        ddlnationality.Items.Add(New ListItem("Please select nationality", ""))
        ddlnationality.Items.Add(New ListItem("Ethiopia", "ethiopia"))
        ddlnationality.Items.Add(New ListItem("Other", "other"))

        ' Populate ddlkebele
        ddlkebele.Items.Clear()
        ddlkebele.Items.Add(New ListItem("Please select", ""))
        ddlkebele.Items.Add(New ListItem("01", "01"))
        ddlkebele.Items.Add(New ListItem("02", "02"))
        ddlkebele.Items.Add(New ListItem("03", "03"))
        ddlkebele.Items.Add(New ListItem("04", "04"))
        ddlkebele.Items.Add(New ListItem("05", "05"))
        ddlkebele.Items.Add(New ListItem("06", "06"))
        ddlkebele.Items.Add(New ListItem("07", "07"))
        ddlkebele.Items.Add(New ListItem("08", "08"))
        ddlkebele.Items.Add(New ListItem("09", "09"))
        ddlkebele.Items.Add(New ListItem("10", "10"))

        ' Populate ddlspecialized
        ddlspecialized.Items.Clear()
        ddlspecialized.Items.Add(New ListItem("Please select", ""))
        ddlspecialized.Items.Add(New ListItem("Specialized", "specialized"))
        ddlspecialized.Items.Add(New ListItem("Sub Specialized", "sub specialized"))
        ddlspecialized.Items.Add(New ListItem("Midwifery", "midwifery"))
        ddlspecialized.Items.Add(New ListItem("Admin", "admin"))
    End Sub

    Private Sub UpdateProfileData(username As String)
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Using connection As New SqlConnection(connectionString)
            Dim command As New SqlCommand("UPDATE docORadminDetails SET FirstName = @FirstName, MiddleName = @MiddleName, LastName = @LastName, DateOfBirth = @DateOfBirth, Age = @Age, Wereda = @Wereda, Nationality = @Nationality, Kebele = @Kebele, Phone = @Phone, SpecializedOrAdmin = @SpecializedOrAdmin WHERE UserName = @UserName", connection)
            command.Parameters.AddWithValue("@FirstName", txtFirstName.Text)
            command.Parameters.AddWithValue("@MiddleName", txtMiddleName.Text)
            command.Parameters.AddWithValue("@LastName", txtLastName.Text)
            command.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text)
            command.Parameters.AddWithValue("@Age", txtAge.Text)
            command.Parameters.AddWithValue("@Sex", ddlsex.SelectedValue)

            command.Parameters.AddWithValue("@Wereda", ddlWereda.SelectedValue)
            command.Parameters.AddWithValue("@Nationality", ddlnationality.SelectedValue)
            command.Parameters.AddWithValue("@Kebele", ddlkebele.SelectedValue)
            command.Parameters.AddWithValue("@Phone", txtPhone.Text)
            command.Parameters.AddWithValue("@SpecializedOrAdmin", ddlspecialized.SelectedValue)
            command.Parameters.AddWithValue("@UserName", username)

            connection.Open()
            Dim rowsAffected As Integer = command.ExecuteNonQuery()
            updatemessage.Text = If(rowsAffected > 0, "Profile updated successfully.", "Profile update failed.")
        End Using
    End Sub
End Class

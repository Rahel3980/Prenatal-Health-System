Imports System.Data.SqlClient
Imports System.Reflection.Emit

Public Class docprofile
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

        Using conn As New SqlConnection(connectionString)
            Dim cmd As New SqlCommand("SELECT * FROM docORadminDetails WHERE UserName = @UserName", conn)
            cmd.Parameters.AddWithValue("@UserName", username)

            Try
                conn.Open()
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    If reader.Read() Then
                        Label1.Text = "User Name: " & reader("UserName").ToString()
                        Label2.Text = "First Name: " & reader("FirstName").ToString()
                        Label3.Text = "Middle Name: " & reader("MiddleName").ToString()
                        Label4.Text = "Last Name: " & reader("LastName").ToString()
                        Label5.Text = "Email: " & reader("Email").ToString()
                        Label6.Text = "Sex: " & reader("Sex").ToString()
                        Label7.Text = "Date of Birth: " & Convert.ToDateTime(reader("DateOfBirth")).ToString("MM/dd/yyyy")
                        Label8.Text = "Age: " & reader("Age").ToString()
                        Label9.Text = "Wereda: " & reader("Wereda").ToString()
                        Label10.Text = "Nationality: " & reader("Nationality").ToString()
                        Label11.Text = "Kebele: " & reader("Kebele").ToString()
                        Label12.Text = "Phone: " & reader("Phone").ToString()
                        Label13.Text = "Specialized/Role: " & reader("SpecializedOrAdmin").ToString()
                    Else
                        lblmessage.Text = "No profile data found."
                        lblmessage.ForeColor = System.Drawing.Color.Red
                    End If
                End Using
            Catch ex As Exception
                lblmessage.Text = "An error occurred: " & ex.Message
                lblmessage.ForeColor = System.Drawing.Color.Red
            End Try
        End Using
    End Sub


End Class

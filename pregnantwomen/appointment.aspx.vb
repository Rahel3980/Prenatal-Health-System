Imports System.Data.SqlClient

Public Class appointment
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

            Else
                ' Redirect to login page if session is not set
                Response.Redirect("~/loginall.aspx")
            End If
        End If
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"

        Dim username As String = txtName.Text ' Reference to the TextBox with ID txtName

        If String.IsNullOrWhiteSpace(username) Then
            lblMessage.Text = "Please enter a username." ' Display a message if the username is empty
            Return
        End If

        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT * FROM appointment WHERE username = @username"
            Dim command As New SqlCommand(query, connection)
            command.Parameters.AddWithValue("@username", username)

            Try
                connection.Open()
                Dim reader As SqlDataReader = command.ExecuteReader()

                If reader.HasRows Then
                    gvAppointments.DataSource = reader ' Bind data to the GridView
                    gvAppointments.DataBind()
                Else
                    lblMessage.Text = "No appointments found for the provided username."
                End If

                reader.Close()
            Catch ex As Exception
                lblMessage.Text = "An error occurred: " & ex.Message
            End Try
        End Using
    End Sub
End Class
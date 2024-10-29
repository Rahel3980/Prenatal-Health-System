Imports System.Data.SqlClient
Imports System.Configuration

Public Class REPORTS
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
                BindGridView()
            Else
                ' Redirect to login page if session is not set
                Response.Redirect("~/loginall.aspx")
                End If
            End If


    End Sub

    ' Method to bind the GridView
    Private Sub BindGridView()
        gvUsers.DataBind()
    End Sub

    ' Method to fetch users from the database
    Private Function GetUsers() As DataTable
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Dim query As String = "SELECT UserName, Status FROM docORadminDetails"
        Dim dtUsers As New DataTable()

        Using conn As New SqlConnection(connectionString)
            Using cmd As New SqlCommand(query, conn)
                Try
                    conn.Open()

                    ' Fill the DataTable with data from the database
                    Using adapter As New SqlDataAdapter(cmd)
                        adapter.Fill(dtUsers)
                    End Using

                Catch ex As Exception
                    lblMessage.Text = "An error occurred while fetching users: " & ex.Message
                End Try
            End Using
        End Using

        Return dtUsers
    End Function

    ' Event handler for the activate/deactivate button
    Protected Sub Buttonact_Click(sender As Object, e As EventArgs) Handles Buttonact.Click
        Dim username As String = TextBox1.Text.Trim()
        If String.IsNullOrEmpty(username) Then
            lblMessage.Text = "Please enter a username."
            Return
        End If

        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"

        Using conn As New SqlConnection(connectionString)
            Try
                conn.Open()

                ' Check current status
                Dim cmd As New SqlCommand("SELECT Status FROM docORadminDetails WHERE UserName = @UserName", conn)
                cmd.Parameters.AddWithValue("@UserName", username)
                Dim result = cmd.ExecuteScalar()

                If result IsNot Nothing Then
                    Dim currentStatus As String = result.ToString()
                    Dim newStatus As String = If(currentStatus = "Active", "Inactive", "Active")

                    ' Call the stored procedure
                    Dim spCmd As New SqlCommand("UpdateDOCStatus", conn)
                    spCmd.CommandType = CommandType.StoredProcedure
                    spCmd.Parameters.AddWithValue("@UserName", username)
                    spCmd.Parameters.AddWithValue("@NewStatus", newStatus)
                    Dim rowsAffected As Integer = spCmd.ExecuteNonQuery()

                    If rowsAffected > 0 Then
                        lblMessage.Text = $"User '{username}' has been {(If(newStatus = "Active", "activated", "deactivated"))}."
                    Else
                        lblMessage.Text = $"User '{username}' status update failed."
                    End If

                    ' Clear the input field
                    TextBox1.Text = String.Empty
                Else
                    lblMessage.Text = $"User '{username}' not found."
                End If

            Catch ex As Exception
                lblMessage.Text = $"An error occurred: {ex.Message}"
            End Try
        End Using

        ' Refresh the GridView to reflect the changes
        BindGridView()
    End Sub

    ' Event handler for the second button action (e.g., deactivating a user)
    Protected Sub Buttonaction_Click(sender As Object, e As EventArgs) Handles Buttonaction.Click
        Dim username As String = TextBox2.Text.Trim()
        If String.IsNullOrEmpty(username) Then
            lblMessage2.Text = "Please enter a username."
            Return
        End If

        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Using conn As New SqlConnection(connectionString)

            Try
                conn.Open()
                ' Check current status
                Dim cmd As New SqlCommand("SELECT Status FROM UserRegistrationDetails WHERE UserName = @UserName", conn)
                cmd.Parameters.AddWithValue("@UserName", username)
                Dim result = cmd.ExecuteScalar()
                If result IsNot Nothing Then
                    Dim currentStatus As String = result.ToString()
                    Dim newStatus As String = If(currentStatus = "Active", "Inactive", "Active")

                    ' Call the stored procedure
                    Dim spCmd As New SqlCommand("UpdateUserStatus", conn)
                    spCmd.CommandType = CommandType.StoredProcedure
                    spCmd.Parameters.AddWithValue("@UserName", username)
                    spCmd.Parameters.AddWithValue("@NewStatus", newStatus)
                    Dim rowsAffected As Integer = spCmd.ExecuteNonQuery()

                    If rowsAffected > 0 Then
                        lblMessage2.Text = $"User '{username}' has been {(If(newStatus = "Active", "activated", "deactivated"))}."
                    Else
                        lblMessage2.Text = $"User '{username}' status update failed."
                    End If

                    ' Clear the input field
                    TextBox1.Text = String.Empty
                Else
                    lblMessage2.Text = $"User '{username}' not found."
                End If
            Catch ex As Exception
                lblMessage2.Text = $"An error occurred: {ex.Message}"
            End Try
        End Using

        ' Refresh the GridView to reflect the changes
        BindGridView()



        ' Refresh the GridView to show updated data
    End Sub

    ' Handle RowDataBound event to update the color of the status column based on its value
    Protected Sub gvUsers_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles gvUsers.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            ' Retrieve the DataRowView for the current row
            Dim rowView As DataRowView = CType(e.Row.DataItem, DataRowView)

            ' Find the Label control in the current row
            Dim statusLabel As Label = CType(e.Row.FindControl("statusLabel"), Label)

            ' Ensure that the Label control is found
            If statusLabel IsNot Nothing Then
                ' Get the status value from the DataRowView
                Dim status As String = rowView("Status").ToString()
                statusLabel.Text = status

                ' Set the color based on the status value
                If status = "Active" Then
                    statusLabel.ForeColor = System.Drawing.Color.Green
                ElseIf status = "Inactive" Then
                    statusLabel.ForeColor = System.Drawing.Color.Red
                End If
            End If
        End If
    End Sub

    Protected Sub gvUsers_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvUsers.SelectedIndexChanged

    End Sub
End Class

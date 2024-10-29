Imports System.Data.SqlClient

Public Class mainappointment
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
    Protected Sub btnAppoint_Click(sender As Object, e As EventArgs) Handles btnappoint.Click

        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Using conn As New SqlConnection(connectionString)
            Using cmd As New SqlCommand("InsertAppointment", conn)
                cmd.CommandType = CommandType.StoredProcedure

                ' Add parameters for the stored procedure
                cmd.Parameters.AddWithValue("@CheckInID", If(String.IsNullOrWhiteSpace(txtCheckInID.Text), DBNull.Value, CInt(txtCheckInID.Text))) ' Optional parameter for CheckInID
                cmd.Parameters.AddWithValue("@UserName", txtUsername.Text)
                cmd.Parameters.AddWithValue("@FirstName", txtfname.Text)
                cmd.Parameters.AddWithValue("@MiddleName", If(String.IsNullOrWhiteSpace(txtmname.Text), DBNull.Value, txtmname.Text))
                cmd.Parameters.AddWithValue("@LastName", txtlname.Text)
                cmd.Parameters.AddWithValue("@AppointmentDate", DateTime.Parse(txtDate.Text)) ' Parse Date from TextBox
                cmd.Parameters.AddWithValue("@AppointmentTime", TimeSpan.Parse(txtTime.Text)) ' Parse Time from TextBox
                cmd.Parameters.AddWithValue("@Notes", If(String.IsNullOrWhiteSpace(txtNotes.Text), DBNull.Value, txtNotes.Text))

                Try
                    conn.Open()
                    Dim newAppointmentID As Object = cmd.ExecuteScalar() ' Execute the stored procedure and get the new Appointment ID

                    ' Display confirmation message
                    lblConfirmation.Text = "Appointment booked successfully!  Appointment ID is " & newAppointmentID.ToString()
                Catch ex As SqlException
                    lblConfirmation.Text = "Error: " & ex.Message
                End Try
            End Using
        End Using
    End Sub

    Protected Sub Checkbox1_CheckedChanged(sender As Object, e As EventArgs) Handles Checkbox1.CheckedChanged
        If Checkbox1.Checked Then
            GridView1.Visible = True
            GridView1.DataBind() ' Ensure GridView is refreshed
        Else
            GridView1.Visible = False
        End If
    End Sub

    Private Sub LoadUserData()
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Dim query As String = "SELECT * FROM UserRegistrationDetails" ' Adjust table name if needed

        Using conn As New SqlConnection(connectionString)
            Dim cmd As New SqlCommand(query, conn)
            Dim da As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()

            Try
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
                GridView1.Visible = True
            Catch ex As Exception
                ' Handle the exception (e.g., log it, show an error message)
                lblmessage.Text = "An error occurred: " & ex.Message
                lblmessage.ForeColor = System.Drawing.Color.Red
            End Try
        End Using
    End Sub

    Protected Sub CheckBox2_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox2.CheckedChanged
        If CheckBox2.Checked Then
            GridView2.Visible = True
            GridView2.DataBind() ' Refresh the GridView data
        Else
            GridView2.Visible = False
        End If

    End Sub
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles Insertstatus.Click
        Dim appointmentID As Integer
        If Not Integer.TryParse(txtAppointmentID.Text, appointmentID) Then
            Label1.Text = "Please enter a valid Appointment ID."
            Return
        End If

        Dim status As String = ddlStatus.SelectedValue

        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Dim query As String = "usp_UpdateAppointmentStatus"

        Using connection As New SqlConnection(connectionString)
            Dim command As New SqlCommand(query, connection)
            command.CommandType = CommandType.StoredProcedure

            command.Parameters.AddWithValue("@AppointmentID", appointmentID)
            command.Parameters.AddWithValue("@Status", status)

            Try
                connection.Open()
                command.ExecuteNonQuery()
                Label1.Text = "Status inserted successfully."
            Catch ex As Exception
                Label1.Text = "An error occurred: " & ex.Message
            End Try
        End Using
    End Sub



    ' Handle update appointment status
    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles Updatestatus.Click
        Dim appointmentID As Integer
        If Not Integer.TryParse(txtAppointmentID.Text, appointmentID) Then
            Label1.Text = "Please enter a valid Appointment ID."
            Return
        End If

        Dim status As String = ddlStatus.SelectedValue

        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Dim query As String = "usp_UpdateAppointmentStatus"

        Using connection As New SqlConnection(connectionString)
            Dim command As New SqlCommand(query, connection)
            command.CommandType = CommandType.StoredProcedure

            command.Parameters.AddWithValue("@AppointmentID", appointmentID)
            command.Parameters.AddWithValue("@Status", status)

            Try
                connection.Open()
                command.ExecuteNonQuery()
                Label1.Text = "Status updated successfully."
            Catch ex As Exception
                Label1.Text = "An error occurred: " & ex.Message
            End Try
        End Using
    End Sub

    Protected Sub GridAPPT_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridAPPT.SelectedIndexChanged

    End Sub

    Protected Sub txtCheckInID_TextChanged(sender As Object, e As EventArgs) Handles txtCheckInID.TextChanged

    End Sub
End Class
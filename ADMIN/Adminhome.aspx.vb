Imports System.Data.SqlClient

Public Class Adminhome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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
            DisplayAdminName()
            LoadDashboardMetrics()
            BindRecentRegistrations()
        End If

    End Sub

    Private Sub DisplayAdminName()
        ' Check if the session variable "AdminUserName" exists
        If Session("AdminUserName") IsNot Nothing Then
            lblWelcomeAdmin.Text = "Welcome, Administrator " & Session("AdminUserName").ToString()
        Else
            lblWelcomeAdmin.Text = "Welcome, Administrator"
        End If
    End Sub
    Private Sub LoadDashboardMetrics()
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Dim query As String = "GetDashboardMetrics"

        Using conn As New SqlConnection(connectionString)
            Try
                conn.Open()

                Using cmd As New SqlCommand(query, conn)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.CommandTimeout = 120 ' Increase the timeout period to 120 seconds


                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.Read() Then
                            lblTotalUsers.Text = reader("TotalUsers").ToString()
                            lblTotalDoctors.Text = reader("TotalDoctors").ToString()
                            lblTotalCheckIns.Text = reader("TotalCheckIns").ToString()
                            lblPendingAppointments.Text = reader("TotalAppointments").ToString()
                            Label1.Text = reader("ActiveUsers").ToString()
                            Label2.Text = reader("InactiveUsers").ToString()
                            Label3.Text = reader("ActiveDoctors").ToString()
                            Label4.Text = reader("InactiveDoctors").ToString()
                        End If
                    End Using
                End Using

            Catch ex As SqlException
                lblTotalUsers.Text = "SQL Error: " & ex.Message
                lblTotalDoctors.Text = "SQL Error"
                lblTotalCheckIns.Text = "SQL Error"
                lblPendingAppointments.Text = "SQL Error"
                Label1.Text = "SQL Error"
                Label2.Text = "SQL Error"
                Label3.Text = "SQL Error"
                Label4.Text = "SQL Error"

                System.Diagnostics.Debug.WriteLine("SQL Exception: " & ex.Message)
                System.Diagnostics.Debug.WriteLine("Stack Trace: " & ex.StackTrace)
                System.Diagnostics.Debug.WriteLine("Query Executed: " & query)

            Catch ex As Exception
                lblTotalUsers.Text = "Error: " & ex.Message
                lblTotalDoctors.Text = "Error"
                lblTotalCheckIns.Text = "Error"
                lblPendingAppointments.Text = "Error"
                Label1.Text = "Error"
                Label2.Text = "Error"
                Label3.Text = "Error"
                Label4.Text = "Error"

                System.Diagnostics.Debug.WriteLine("General Exception: " & ex.Message)
                System.Diagnostics.Debug.WriteLine("Stack Trace: " & ex.StackTrace)
            End Try
        End Using
    End Sub



    Private Sub BindRecentRegistrations()
        Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"
        Dim query As String = "GetAllRegistrations"

        Using conn As New SqlConnection(connectionString)
            Using cmd As New SqlCommand(query, conn)
                cmd.CommandType = CommandType.StoredProcedure

                Dim da As New SqlDataAdapter(cmd)
                Dim dt As New DataTable()

                Try
                    conn.Open()
                    da.Fill(dt)
                    gvRecentRegistrations.DataSource = dt
                    gvRecentRegistrations.DataBind()
                Catch ex As Exception
                    ' Handle the exception (log it, display a message, etc.)
                    lblmessage.Text = "An error occurred while loading recent registrations: " & ex.Message
                End Try
            End Using
        End Using
    End Sub

End Class

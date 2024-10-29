Imports System.Data.SqlClient

Public Class doc_regestration
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

    End Sub

    Protected Sub Register_Click(sender As Object, e As EventArgs) Handles Register.Click
        If Page.IsValid Then
            Dim username As String = txtname.Text.Trim()
            Dim password As String = txtpassword.Text.Trim()
            Dim firstName As String = TextBox1.Text.Trim()
            Dim middleName As String = TextBox2.Text.Trim()
            Dim lastName As String = TextBox3.Text.Trim()
            Dim sex As String = DropDownList1.SelectedValue
            Dim dob As String = txtDOB.Text.Trim()
            Dim age As Integer = 0
            If Not String.IsNullOrEmpty(txtAge.Text.Trim()) Then
                Integer.TryParse(txtAge.Text.Trim(), age)
            End If
            Dim email As String = TextBox5.Text.Trim()
            Dim wereda As String = DropDownList2.SelectedValue
            Dim nationality As String = DropDownList3.SelectedValue
            Dim kebele As String = DropDownList8.SelectedValue
            Dim specializedOrAdmin As String = DropDownList4.SelectedValue
            Dim phone As String = txtphone.Text.Trim()
            Dim role As String = txtRole.SelectedValue

            ' Connection string (update as necessary for your environment)
            Dim connectionString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"

            Using conn As New SqlConnection(connectionString)
                conn.Open()
                Using cmd As New SqlCommand("InsertDocOrAdminAndLoginDetails", conn)
                    cmd.CommandType = CommandType.StoredProcedure

                    ' Pass parameters to the stored procedure
                    cmd.Parameters.AddWithValue("@Username", username)
                    cmd.Parameters.AddWithValue("@Password", password) ' Password will be hashed inside the stored procedure
                    cmd.Parameters.AddWithValue("@FirstName", firstName)
                    cmd.Parameters.AddWithValue("@MiddleName", middleName)
                    cmd.Parameters.AddWithValue("@LastName", lastName)
                    cmd.Parameters.AddWithValue("@Sex", sex)
                    cmd.Parameters.AddWithValue("@DateOfBirth", If(String.IsNullOrEmpty(dob), DBNull.Value, DateTime.Parse(dob)))
                    cmd.Parameters.AddWithValue("@Age", age)
                    cmd.Parameters.AddWithValue("@Email", email)
                    cmd.Parameters.AddWithValue("@Wereda", wereda)
                    cmd.Parameters.AddWithValue("@Nationality", nationality)
                    cmd.Parameters.AddWithValue("@Kebele", kebele)
                    cmd.Parameters.AddWithValue("@SpecializedOrAdmin", specializedOrAdmin)
                    cmd.Parameters.AddWithValue("@Phone", phone)
                    cmd.Parameters.AddWithValue("@RoleAttribute", role) ' Updated parameter name

                    ' Execute the stored procedure
                    Try
                        cmd.ExecuteNonQuery()
                        Label1.Text = "Registration successful!"
                        Label1.ForeColor = System.Drawing.Color.Green
                    Catch ex As SqlException
                        Label1.Text = "A database error occurred: " & ex.Message
                        Label1.ForeColor = System.Drawing.Color.Red
                    Catch ex As Exception
                        Label1.Text = "An error occurred: " & ex.Message
                        Label1.ForeColor = System.Drawing.Color.Red
                    End Try
                End Using
            End Using
        End If
    End Sub

End Class
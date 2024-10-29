Imports System.Data.SqlClient

Public Class changepassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Check if the session variable is not set and redirect accordingly
        If Session("UserName") Is Nothing Then
        End If
    End Sub
    Protected Sub BtnChangePassword_Click(sender As Object, e As EventArgs) Handles BtnChangePassword.Click
        Dim username As String = TxtUserName.Text
        Dim newPassword As String = TxtNewPassword.Text
        Dim confirmPassword As String = TxtConfirmPassword.Text

        ' Validate input
        If String.IsNullOrEmpty(newPassword) OrElse String.IsNullOrEmpty(confirmPassword) Then
            LblChangePasswordMessage.Text = "Please enter and confirm your  stringnew password."
            Return
        End If

        ' Check if passwords match
        If newPassword <> confirmPassword Then
            LblChangePasswordMessage.Text = "Passwords do not match."


            Return
        End If

        ' Ensure the password meets the minimum length requirement (8 characters in this case)
        If newPassword.Length < 8 Then
            LblChangePasswordMessage.Text = "Password must be at least 8 characters long."
            Return
        End If

        ' Assuming you have a way to get the username from the session or query string

        Dim connString As String = "Data Source=DESKTOP-SPP1HOB\SQLEXPRESS;Initial Catalog=PRENATALUOG;Integrated Security=True;"

        Using conn As New SqlConnection(connString)
            Using cmd As New SqlCommand("dbo.UpdateUserPassword", conn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@UserName", userName)
                cmd.Parameters.AddWithValue("@NewPassword", newPassword) ' Hashing should be done in the procedure

                Try
                    conn.Open()
                    cmd.ExecuteNonQuery()
                    LblChangePasswordMessage.Text = "Your password has been changed successfully."
                    LblChangePasswordMessage.ForeColor = System.Drawing.Color.Green
                Catch ex As Exception
                    LblChangePasswordMessage.Text = "An error occurred: " & ex.Message
                    LblChangePasswordMessage.ForeColor = System.Drawing.Color.Red
                End Try
            End Using
        End Using

    End Sub
End Class

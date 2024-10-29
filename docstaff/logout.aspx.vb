Public Class logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Clear()
        Session.Abandon()
        Session.RemoveAll()







        ' Redirect to the default page after logout
        Response.Redirect("~/loginall.aspx")
    End Sub

End Class
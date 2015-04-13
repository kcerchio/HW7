
Partial Class login_Default
    Inherits System.Web.UI.Page



    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn

        If Roles.IsUserInRole(Login1.UserName, "r_colbert_Admin") = True Then
            Response.Redirect("~/admin/Roster.aspx")

        Else : Response.Redirect("~/Roster.aspx")

        End If

    End Sub
End Class


Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedPlayer As String = e.Values("player_name").ToString

        Label1.Text = deletedPlayer & "has been removed from the Cubs roster"

        Response.AddHeader("REFRESH", "3:URL=~/Roster.aspx")
    End Sub





    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3:URL=~/Roster.aspx")
    End Sub
End Class

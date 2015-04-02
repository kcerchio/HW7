
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub searchtb_TextChanged(sender As Object, e As EventArgs) Handles searchtb.TextChanged
        Dim searchWord As String
        searchWord = "Select * From kcerchio_cubs where (player_name Like '%" + searchtb.Text.ToString() + "%')"
        Sql_cubsPlayers.SelectCommand = searchWord
    End Sub




    Protected Sub anothertb_TextChanged(sender As Object, e As EventArgs) Handles anothertb.TextChanged
        Dim searchWord As String
        searchWord = "Select * From kcerchio_cubs where (player_name Like '&" + anothertb.Text.ToString() + "&')"
        Sql_cubsPlayers.SelectCommand = searchWord
    End Sub

End Class

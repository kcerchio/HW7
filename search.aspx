<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <%If Not IsPostBack Then%>
        <asp:SqlDataSource ID="Sql_cubsPlayers" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" SelectCommand="SELECT * FROM [kcerchio_cubs]"></asp:SqlDataSource>
        Search for a player name: &nbsp;&nbsp;&nbsp;<asp:TextBox ID="searchtb" runat="server"></asp:TextBox>
    
    <% Else%>
        <br />
        <br />

        Search for a player name: &nbsp;&nbsp;&nbsp;<asp:TextBox ID="anothertb" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:GridView ID="GridView1" CssClass="gridview" runat="server" AutoGenerateColumns="False" DataKeyNames="player_ID" DataSourceID="Sql_cubsPlayers">
            <Columns>
                <asp:BoundField DataField="player_name" HeaderText="Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_number" HeaderText="Number" SortExpression="player_number" />
                <asp:BoundField DataField="player_position" HeaderText="Position" SortExpression="player_position" />
                <asp:BoundField DataField="player_ba" HeaderText="Batting Average" SortExpression="player_ba" />
                <asp:BoundField DataField="player_hr" HeaderText="Home Runs" SortExpression="player_hr" />
                <asp:BoundField DataField="player_steals" HeaderText="Steals" SortExpression="player_steals" />
                <asp:BoundField DataField="player_age" HeaderText="Age" SortExpression="player_age" />
            </Columns>
        </asp:GridView>
        <% End If%>
        </div>
    </form>
</body>
</html>

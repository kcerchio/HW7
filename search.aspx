<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_cubsPlayers" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" SelectCommand="SELECT * FROM [kcerchio_cubs]"></asp:SqlDataSource>
        <asp:TextBox ID="searchtb" runat="server"></asp:TextBox>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="player_ID" DataSourceID="Sql_cubsPlayers">
            <Columns>
                <asp:BoundField DataField="player_ID" HeaderText="player_ID" InsertVisible="False" ReadOnly="True" SortExpression="player_ID" />
                <asp:BoundField DataField="player_name" HeaderText="player_name" SortExpression="player_name" />
                <asp:BoundField DataField="player_number" HeaderText="player_number" SortExpression="player_number" />
                <asp:BoundField DataField="player_position" HeaderText="player_position" SortExpression="player_position" />
                <asp:BoundField DataField="player_ba" HeaderText="player_ba" SortExpression="player_ba" />
                <asp:BoundField DataField="player_hr" HeaderText="player_hr" SortExpression="player_hr" />
                <asp:BoundField DataField="player_steals" HeaderText="player_steals" SortExpression="player_steals" />
                <asp:BoundField DataField="player_age" HeaderText="player_age" SortExpression="player_age" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

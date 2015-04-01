<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_cubs" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" SelectCommand="SELECT [player_name], [player_number], [player_position] FROM [kcerchio_cubs]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="player_name" HeaderText="player_name" SortExpression="player_name" />
                <asp:BoundField DataField="player_number" HeaderText="player_number" SortExpression="player_number" />
                <asp:BoundField DataField="player_position" HeaderText="player_position" SortExpression="player_position" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>

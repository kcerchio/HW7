<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RosterDetails.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" SelectCommand="SELECT * FROM [kcerchio_cubs] WHERE ([player_ID] = @player_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="player_ID" QueryStringField="player_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

           
            




        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="player_ID" DataSourceID="SqlDataSource1" Height="50px" Width="236px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="player_ID" HeaderText="player_ID" SortExpression="player_ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="player_name" HeaderText="Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_number" HeaderText="#" SortExpression="player_number" />
                <asp:BoundField DataField="player_position" HeaderText="Position" SortExpression="player_position" />
                <asp:BoundField DataField="player_ba" HeaderText="Batting Average" SortExpression="player_ba" />
                <asp:BoundField DataField="player_hr" HeaderText="Home Runs" SortExpression="player_hr" />
                <asp:BoundField DataField="player_steals" HeaderText="Steals" SortExpression="player_steals" />
                <asp:BoundField DataField="player_age" HeaderText="Age" SortExpression="player_age" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>

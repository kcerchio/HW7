<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RosterDetails.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>"
            DeleteCommand="DELETE FROM [kcerchio_cubs] WHERE [player_ID] = @player_ID" 
            InsertCommand="INSERT INTO [kcerchio_cubs] ([player_name], [player_number], [player_position], [player_ba], [player_hr], [player_steals], [player_age]) VALUES (@player_name, @player_number, @player_position, @player_ba, @player_hr, @player_steals, @player_age)" SelectCommand="SELECT [player_name], [player_number], [player_position], [player_ba], [player_hr], [player_steals], [player_age], [player_ID] FROM [kcerchio_cubs]" UpdateCommand="UPDATE [kcerchio_cubs] SET [player_name] = @player_name, [player_number] = @player_number, [player_position] = @player_position, [player_ba] = @player_ba, [player_hr] = @player_hr, [player_steals] = @player_steals, [player_age] = @player_age WHERE [player_ID] = @player_ID">
            <DeleteParameters>
                <asp:Parameter Name="player_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="player_name" Type="String" />
                <asp:Parameter Name="player_number" Type="Int32" />
                <asp:Parameter Name="player_position" Type="String" />
                <asp:Parameter Name="player_ba" Type="Int32" />
                <asp:Parameter Name="player_hr" Type="Int32" />
                <asp:Parameter Name="player_steals" Type="Int32" />
                <asp:Parameter Name="player_age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="player_name" Type="String" />
                <asp:Parameter Name="player_number" Type="Int32" />
                <asp:Parameter Name="player_position" Type="String" />
                <asp:Parameter Name="player_ba" Type="Int32" />
                <asp:Parameter Name="player_hr" Type="Int32" />
                <asp:Parameter Name="player_steals" Type="Int32" />
                <asp:Parameter Name="player_age" Type="Int32" />
                <asp:Parameter Name="player_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

           
            




        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="player_ID" DataSourceID="SqlDataSource1" Height="50px" Width="236px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="player_name" HeaderText="Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_number" HeaderText="#" SortExpression="player_number" />
                <asp:BoundField DataField="player_position" HeaderText="Position" SortExpression="player_position" />
                <asp:BoundField DataField="player_ba" HeaderText="Batting Average" SortExpression="player_ba" />
                <asp:BoundField DataField="player_hr" HeaderText="Home Runs" SortExpression="player_hr" />
                <asp:BoundField DataField="player_steals" HeaderText="Steals" SortExpression="player_steals" />
                <asp:BoundField DataField="player_age" HeaderText="Age" SortExpression="player_age" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>

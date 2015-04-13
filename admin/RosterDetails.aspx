<%@ Page Title="" Language="VB" MasterPageFile="~/cubs.master" AutoEventWireup="false" CodeFile="RosterDetails.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
    
        <asp:SqlDataSource ID="Sql_cubs" runat="server"
            ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" SelectCommand="SELECT * FROM [kcerchio_cubs] WHERE ([player_ID] = @player_ID)" DeleteCommand="DELETE FROM [kcerchio_cubs] WHERE [player_ID] = @player_ID" InsertCommand="INSERT INTO [kcerchio_cubs] ([player_name], [player_number], [player_position], [player_ba], [player_hr], [player_steals], [player_age]) VALUES (@player_name, @player_number, @player_position, @player_ba, @player_hr, @player_steals, @player_age)" UpdateCommand="UPDATE [kcerchio_cubs] SET [player_name] = @player_name, [player_number] = @player_number, [player_position] = @player_position, [player_ba] = @player_ba, [player_hr] = @player_hr, [player_steals] = @player_steals, [player_age] = @player_age WHERE [player_ID] = @player_ID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="player_ID" QueryStringField="player_ID" Type="Int32" />
            </SelectParameters>
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


       


        <asp:Label ID="Label1" runat="server" CssClass="deletedPlayer" Text="Label"></asp:Label>


       


        <br />
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="detailsview" FieldHeaderStyle-CssClass="fielderheader" AlternatingRowStyle-CssClass="altrow" AutoGenerateRows="False" DataKeyNames="player_ID" DataSourceID="Sql_cubs" Height="50px" Width="125px" AllowPaging="True">
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<FieldHeaderStyle CssClass="fielderheader"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="player_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="player_ID" />
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

</asp:Content>


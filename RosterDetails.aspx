<%@ Page Title="" Language="VB" MasterPageFile="~/cubs.master" AutoEventWireup="false" CodeFile="RosterDetails.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
    
        <asp:SqlDataSource ID="Sql_cubs" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>"
             SelectCommand="SELECT * FROM [kcerchio_cubs] WHERE ([player_ID] = @player_ID)" >
    
            <SelectParameters>
                <asp:QueryStringParameter Name="player_ID" QueryStringField="player_ID" Type="Int32" />
            </SelectParameters>
           
         
        </asp:SqlDataSource>

        <br />
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="detailsview" FieldHeaderStyle-CssClass="fielderheader" AlternatingRowStyle-CssClass="altrow" AutoGenerateRows="False" DataKeyNames="player_ID" DataSourceID="Sql_cubs" Height="50px" Width="125px">
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
            </Fields>
    </asp:DetailsView>

</asp:Content>


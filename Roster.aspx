﻿<%@ Page Title="" Language="VB" MasterPageFile="~/cubs.master" AutoEventWireup="false" CodeFile="Roster.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    <br />
        <asp:SqlDataSource ID="Sql_cubs" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" 
            
            DeleteCommand="DELETE FROM [kcerchio_cubs] WHERE [player_ID] = @player_ID" 
            InsertCommand="INSERT INTO [kcerchio_cubs] ([player_name], [player_number], [player_position], [player_ba], [player_hr], [player_steals], [player_age]) VALUES (@player_name, @player_number, @player_position, @player_ba, @player_hr, @player_steals, @player_age)" 
            SelectCommand="SELECT * FROM [kcerchio_cubs]" 
            UpdateCommand="UPDATE [kcerchio_cubs] SET [player_name] = @player_name, [player_number] = @player_number, [player_position] = @player_position, [player_ba] = @player_ba, [player_hr] = @player_hr, [player_steals] = @player_steals, [player_age] = @player_age WHERE [player_ID] = @player_ID">
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

        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AlternatingRowStyle-CssClass="alt" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="player_ID" DataSourceID="Sql_cubs">
            <Columns>
                <asp:BoundField DataField="player_name" HeaderText="Player Name" SortExpression="player_name" />
                <asp:BoundField DataField="player_number" HeaderText="Player Number" SortExpression="player_number" />
                <asp:BoundField DataField="player_position" HeaderText="Player Position" SortExpression="player_position" />
                <asp:HyperLinkField DataNavigateUrlFields="player_ID" DataNavigateUrlFormatString="RosterDetails.aspx?player_ID={0}" Text="View" />
            </Columns>
        </asp:GridView>
    
    </div>






</asp:Content>


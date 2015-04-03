<%@ Page Title="" Language="VB" MasterPageFile="~/cubs.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div>
             <asp:SqlDataSource ID="Sql_cubsPlayers" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" SelectCommand="SELECT * FROM [kcerchio_cubs]"></asp:SqlDataSource>
            <br />


      <%If Not IsPostBack Then%>
       
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

</asp:Content>


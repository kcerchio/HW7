<%@ Page Title="" Language="VB" MasterPageFile="~/cubs.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .center_img {
            height: 702px;
            width: 878px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>WELCOME TO YOUR HOME OF THE CHICAGO CUBS Admin Page!</h1>
    <br />
    <br />
     <ul id="nav">
            <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="./Default.aspx">Home</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./siteManger/roles.aspx">Role Manager</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="./siteManger/users.aspx">View & Edit Users</asp:HyperLink></li>
	        <li class="currentPage"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl=".siteManger/add_user.aspx">Add New User</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="./siteManger/users_by_role.aspx">View Users By Role</asp:HyperLink></li>
        </ul>

    <br />
    <ul>
        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/admin/Roster.aspx">Edit Roster Detail</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="./RosterMove.aspx">Roster Moves</asp:HyperLink></li>

    </ul>

    <asp:Image ID="Image1" runat="server" ImageUrl="~/Wrigley.jpg" Width="868px" />
    

</asp:Content>


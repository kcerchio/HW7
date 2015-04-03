<%@ Page Title="" Language="VB" MasterPageFile="~/cubs.master" AutoEventWireup="false" CodeFile="RosterMove.aspx.vb" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_kcerchioCubs %>" 
            DeleteCommand="DELETE FROM [kcerchio_cubs] WHERE [player_ID] = @player_ID" 
            InsertCommand="INSERT INTO [kcerchio_cubs] ([player_name], [player_number], [player_position], [player_ba], [player_hr], [player_steals], [player_age]) VALUES (@player_name, @player_number, @player_position, @player_ba, @player_hr, @player_steals, @player_age)" SelectCommand="SELECT * FROM [kcerchio_cubs]" UpdateCommand="UPDATE [kcerchio_cubs] SET [player_name] = @player_name, [player_number] = @player_number, [player_position] = @player_position, [player_ba] = @player_ba, [player_hr] = @player_hr, [player_steals] = @player_steals, [player_age] = @player_age WHERE [player_ID] = @player_ID">
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


        


        <asp:FormView ID="FormView1" runat="server" DataKeyNames="player_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="203px" Width="507px">
            <EditItemTemplate>
                player_ID:
                <asp:Label ID="player_IDLabel1" runat="server" Text='<%# Eval("player_ID") %>' />
                <br />
                player_name:
                <asp:TextBox ID="player_nameTextBox" runat="server" Text='<%# Bind("player_name") %>' />
                <br />
                player_number:
                <asp:TextBox ID="player_numberTextBox" runat="server" Text='<%# Bind("player_number") %>' />
                <br />
                player_position:
                <asp:TextBox ID="player_positionTextBox" runat="server" Text='<%# Bind("player_position") %>' />
                <br />
                player_ba:
                <asp:TextBox ID="player_baTextBox" runat="server" Text='<%# Bind("player_ba") %>' />
                <br />
                player_hr:
                <asp:TextBox ID="player_hrTextBox" runat="server" Text='<%# Bind("player_hr") %>' />
                <br />
                player_steals:
                <asp:TextBox ID="player_stealsTextBox" runat="server" Text='<%# Bind("player_steals") %>' />
                <br />
                player_age:
                <asp:TextBox ID="player_ageTextBox" runat="server" Text='<%# Bind("player_age") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>


            <InsertItemTemplate>

                <table class="table">
               
                    <tr>
                        <td style="text-align: right;">
                            Player Name:
                        </td>
                        <td style="text-align: left;">
                            <asp:TextBox ID="player_nameTextBox" runat="server" Text='<%# Bind("player_name") %>' />
                            <asp:RequiredFieldValidator ID="rfv_playerName" runat="server" ErrorMessage="Please Enter Player Name" ControlToValidate="player_nameTextBox"></asp:RequiredFieldValidator>
                            <td style="text-align: left;">
                        </td>
                      
                    </tr>
                        
                        
                      <tr>
                        <td style="text-align: right;">   
                        
                        Player Number:
                            </td>
                          <td style="text-align: left;">
                        
                <asp:TextBox ID="player_numberTextBox" runat="server" Text='<%# Bind("player_number") %>' />
                <asp:RequiredFieldValidator ID="rfv_playerNumber" runat="server" ErrorMessage="Please Enter Player Number" ControlToValidate="player_numberTextBox"></asp:RequiredFieldValidator>
                </td>
                          </tr>
                          
                          
                          
                          
                  <tr>
                        <td style="text-align: right;">        
                  Player Position:
                     </td>
                          <td style="text-align: left;">

                <asp:TextBox ID="player_positionTextBox" runat="server" Text='<%# Bind("player_position") %>' />
                <asp:RequiredFieldValidator ID="rfv_playerposition" runat="server" ErrorMessage="Please Enter Player Position" ControlToValidate="player_positionTextBox"></asp:RequiredFieldValidator>
                </td>
                      </tr>        
       
                             
                  <tr>
                        <td style="text-align: right;">

                Average:
                    </td>
                          <td style="text-align: left;">

                <asp:TextBox ID="player_baTextBox" runat="server" Text='<%# Bind("player_ba") %>' />
           
                </td>
                      </tr>


                 <tr>
                        <td style="text-align: right;">

                Home Runs:
                       </td>
                       <td style="text-align: left;">

                <asp:TextBox ID="player_hrTextBox" runat="server" Text='<%# Bind("player_hr") %>' />
              
                </td>
                      </tr>
                


                <tr>
                        <td style="text-align: right;">

                Steals:
                         </td>
                       <td style="text-align: left;">


                <asp:TextBox ID="player_stealsTextBox" runat="server" Text='<%# Bind("player_steals") %>' />
           
                </td>
                      </tr>


                    <tr>
                        <td style="text-align: right;">

                Age:
                         </td>
                       <td style="text-align: left;">

                <asp:TextBox ID="player_ageTextBox" runat="server" Text='<%# Bind("player_age") %>' />
        
                </td>
                      </tr>
                

                    <td style="text-align: right;">
                        
                        <asp:Button ID="btn_insert" runat="server" Text="Insert" CausesValidation="True" CommandName="Insert" />
                
                        </td>

                    <td style="text-align: left;">
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CausesValidation="False" CommandName="Cancel" />
               
                        </td>
                    
                </table>

            </InsertItemTemplate>
           
            
            
             <ItemTemplate>
                player_ID:
                <asp:Label ID="player_IDLabel" runat="server" Text='<%# Eval("player_ID") %>' />
                <br />
                player_name:
                <asp:Label ID="player_nameLabel" runat="server" Text='<%# Bind("player_name") %>' />
                <br />
                player_number:
                <asp:Label ID="player_numberLabel" runat="server" Text='<%# Bind("player_number") %>' />
                <br />
                player_position:
                <asp:Label ID="player_positionLabel" runat="server" Text='<%# Bind("player_position") %>' />
                <br />
                player_ba:
                <asp:Label ID="player_baLabel" runat="server" Text='<%# Bind("player_ba") %>' />
                <br />
                player_hr:
                <asp:Label ID="player_hrLabel" runat="server" Text='<%# Bind("player_hr") %>' />
                <br />
                player_steals:
                <asp:Label ID="player_stealsLabel" runat="server" Text='<%# Bind("player_steals") %>' />
                <br />
                player_age:
                <asp:Label ID="player_ageLabel" runat="server" Text='<%# Bind("player_age") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    
        
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/IdeaPoster/IdeaMaster.master" AutoEventWireup="true" CodeFile="IdeaPostAppliers.aspx.cs" Inherits="IdeaPoster_IdeaPostAppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Idea_apply_id" 
        OnRowCommand="GridView5_RowCommand"
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="915px">
        <Columns>

             <asp:BoundField DataField="Full_name" HeaderText="Name" 
                            SortExpression="Full_name" />
                                                
                        <asp:BoundField DataField="Email_id" HeaderText="Email" 
                            SortExpression="Email_id" />

            <asp:BoundField DataField="Idea_apply_id" HeaderText="Idea_apply_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Idea_apply_id" 
                Visible="False" />
            <asp:BoundField DataField="Idea_post_id" HeaderText="Idea_post_id" 
                SortExpression="Idea_post_id" Visible="False" />
            <asp:BoundField DataField="Reg_id" HeaderText="Reg_id" SortExpression="Reg_id" 
                Visible="False" />
            <asp:BoundField DataField="Message" HeaderText="Message" 
                SortExpression="Message" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Contact_number" HeaderText="Contact" 
                            SortExpression="Contact_number" />

                        <asp:TemplateField>
                                 <ItemTemplate>
                                  <asp:Button ID="Award" runat="server" Text="Award" CommandArgument='<%#Eval("Reg_id") %>'
                                  CommandName="Award1"></asp:Button>
                                  </ItemTemplate>
                        </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="IdeaPostAppliersData" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
        DeleteCommand="DELETE FROM [IdeaApply] WHERE [Idea_apply_id] = @original_Idea_apply_id AND [Idea_post_id] = @original_Idea_post_id AND [Reg_id] = @original_Reg_id AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))" 
        InsertCommand="INSERT INTO [IdeaApply] ([Idea_post_id], [Reg_id], [Message], [Date]) VALUES (@Idea_post_id, @Reg_id, @Message, @Date)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [IdeaApply]" 
        UpdateCommand="UPDATE [IdeaApply] SET [Idea_post_id] = @Idea_post_id, [Reg_id] = @Reg_id, [Message] = @Message, [Date] = @Date WHERE [Idea_apply_id] = @original_Idea_apply_id AND [Idea_post_id] = @original_Idea_post_id AND [Reg_id] = @original_Reg_id AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Idea_apply_id" Type="Int32" />
            <asp:Parameter Name="original_Idea_post_id" Type="Int32" />
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_Message" Type="String" />
            <asp:Parameter Name="original_Date" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Idea_post_id" Type="Int32" />
            <asp:Parameter Name="Reg_id" Type="Int32" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Idea_post_id" Type="Int32" />
            <asp:Parameter Name="Reg_id" Type="Int32" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="original_Idea_apply_id" Type="Int32" />
            <asp:Parameter Name="original_Idea_post_id" Type="Int32" />
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_Message" Type="String" />
            <asp:Parameter Name="original_Date" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>


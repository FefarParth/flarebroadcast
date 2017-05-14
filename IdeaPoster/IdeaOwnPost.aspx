<%@ Page Title="" Language="C#" MasterPageFile="~/IdeaPoster/IdeaMaster.master" AutoEventWireup="true" CodeFile="IdeaOwnPost.aspx.cs" Inherits="IdeaPoster_IdeaOwnPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 1027px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                &nbsp;</td>
            <td style="width: 1027px">

    <asp:GridView ID="GridView6" runat="server" AllowPaging="True" OnRowCommand="GridView6_RowCommand"
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Idea_post_id" 
        Width="508px" onselectedindexchanged="GridView6_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="Idea_post_id" HeaderText="Idea_post_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Idea_post_id" 
                Visible="False" />
            <asp:BoundField DataField="Reg_id" HeaderText="Reg_id" SortExpression="Reg_id" 
                Visible="False" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="C_name" HeaderText="C_name" SortExpression="C_name" 
                Visible="False" />
            <asp:BoundField DataField="Website" HeaderText="Website" 
                SortExpression="Website" Visible="False" />
            <asp:BoundField DataField="Country_id" HeaderText="Country_id" 
                SortExpression="Country_id" Visible="False" />
            <asp:BoundField DataField="State_id" HeaderText="State_id" 
                SortExpression="State_id" Visible="False" />
            <asp:BoundField DataField="City_id" HeaderText="City_id" 
                SortExpression="City_id" Visible="False" />
            <asp:BoundField DataField="Category_id" HeaderText="Category_id" 
                SortExpression="Category_id" Visible="False" />
            <asp:BoundField DataField="Category_id2" HeaderText="Category_id2" 
                SortExpression="Category_id2" Visible="False" />
            <asp:BoundField DataField="Stage" HeaderText="Stage" SortExpression="Stage" 
                Visible="False" />
            <asp:BoundField DataField="Investor_role" HeaderText="Investor_role" 
                SortExpression="Investor_role" Visible="False" />
            <asp:BoundField DataField="Raise" HeaderText="Raise" SortExpression="Raise" 
                Visible="False" />
            <asp:BoundField DataField="Min_investment" HeaderText="Min_investment" 
                SortExpression="Min_investment" Visible="False" />
            <asp:BoundField DataField="Summary" HeaderText="Summary" 
                SortExpression="Summary" Visible="False" />
            <asp:BoundField DataField="Details" HeaderText="Details" 
                SortExpression="Details" Visible="False" />
            <asp:BoundField DataField="Market_status" HeaderText="Market_status" 
                SortExpression="Market_status" Visible="False" />
            <asp:BoundField DataField="Proof" HeaderText="Proof" SortExpression="Proof" 
                Visible="False" />
            <asp:BoundField DataField="Future" HeaderText="Future" SortExpression="Future" 
                Visible="False" />

             <asp:BoundField DataField="Category_title" HeaderText="Category" 
                SortExpression="Category_title" />

             <asp:TemplateField HeaderText="Details">
                      
                        <ItemTemplate>
                                <asp:LinkButton ID="ViewMore" runat="server" CommandArgument='<%#Eval("Idea_post_id") %>'
                                CommandName="VIEW">View More</asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
        
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="IdeaPostData" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
        DeleteCommand="DELETE FROM [IdeaPost] WHERE [Idea_post_id] = @original_Idea_post_id AND (([Reg_id] = @original_Reg_id) OR ([Reg_id] IS NULL AND @original_Reg_id IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([C_name] = @original_C_name) OR ([C_name] IS NULL AND @original_C_name IS NULL)) AND (([Website] = @original_Website) OR ([Website] IS NULL AND @original_Website IS NULL)) AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL)) AND (([State_id] = @original_State_id) OR ([State_id] IS NULL AND @original_State_id IS NULL)) AND (([City_id] = @original_City_id) OR ([City_id] IS NULL AND @original_City_id IS NULL)) AND (([Category_id] = @original_Category_id) OR ([Category_id] IS NULL AND @original_Category_id IS NULL)) AND (([Category_id2] = @original_Category_id2) OR ([Category_id2] IS NULL AND @original_Category_id2 IS NULL)) AND (([Stage] = @original_Stage) OR ([Stage] IS NULL AND @original_Stage IS NULL)) AND (([Investor_role] = @original_Investor_role) OR ([Investor_role] IS NULL AND @original_Investor_role IS NULL)) AND (([Raise] = @original_Raise) OR ([Raise] IS NULL AND @original_Raise IS NULL)) AND (([Min_investment] = @original_Min_investment) OR ([Min_investment] IS NULL AND @original_Min_investment IS NULL)) AND (([Summary] = @original_Summary) OR ([Summary] IS NULL AND @original_Summary IS NULL)) AND (([Details] = @original_Details) OR ([Details] IS NULL AND @original_Details IS NULL)) AND (([Market_status] = @original_Market_status) OR ([Market_status] IS NULL AND @original_Market_status IS NULL)) AND (([Proof] = @original_Proof) OR ([Proof] IS NULL AND @original_Proof IS NULL)) AND (([Future] = @original_Future) OR ([Future] IS NULL AND @original_Future IS NULL))" 
        InsertCommand="INSERT INTO [IdeaPost] ([Reg_id], [Title], [C_name], [Website], [Country_id], [State_id], [City_id], [Category_id], [Category_id2], [Stage], [Investor_role], [Raise], [Min_investment], [Summary], [Details], [Market_status], [Proof], [Future]) VALUES (@Reg_id, @Title, @C_name, @Website, @Country_id, @State_id, @City_id, @Category_id, @Category_id2, @Stage, @Investor_role, @Raise, @Min_investment, @Summary, @Details, @Market_status, @Proof, @Future)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [IdeaPost]" 
        UpdateCommand="UPDATE [IdeaPost] SET [Reg_id] = @Reg_id, [Title] = @Title, [C_name] = @C_name, [Website] = @Website, [Country_id] = @Country_id, [State_id] = @State_id, [City_id] = @City_id, [Category_id] = @Category_id, [Category_id2] = @Category_id2, [Stage] = @Stage, [Investor_role] = @Investor_role, [Raise] = @Raise, [Min_investment] = @Min_investment, [Summary] = @Summary, [Details] = @Details, [Market_status] = @Market_status, [Proof] = @Proof, [Future] = @Future WHERE [Idea_post_id] = @original_Idea_post_id AND (([Reg_id] = @original_Reg_id) OR ([Reg_id] IS NULL AND @original_Reg_id IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([C_name] = @original_C_name) OR ([C_name] IS NULL AND @original_C_name IS NULL)) AND (([Website] = @original_Website) OR ([Website] IS NULL AND @original_Website IS NULL)) AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL)) AND (([State_id] = @original_State_id) OR ([State_id] IS NULL AND @original_State_id IS NULL)) AND (([City_id] = @original_City_id) OR ([City_id] IS NULL AND @original_City_id IS NULL)) AND (([Category_id] = @original_Category_id) OR ([Category_id] IS NULL AND @original_Category_id IS NULL)) AND (([Category_id2] = @original_Category_id2) OR ([Category_id2] IS NULL AND @original_Category_id2 IS NULL)) AND (([Stage] = @original_Stage) OR ([Stage] IS NULL AND @original_Stage IS NULL)) AND (([Investor_role] = @original_Investor_role) OR ([Investor_role] IS NULL AND @original_Investor_role IS NULL)) AND (([Raise] = @original_Raise) OR ([Raise] IS NULL AND @original_Raise IS NULL)) AND (([Min_investment] = @original_Min_investment) OR ([Min_investment] IS NULL AND @original_Min_investment IS NULL)) AND (([Summary] = @original_Summary) OR ([Summary] IS NULL AND @original_Summary IS NULL)) AND (([Details] = @original_Details) OR ([Details] IS NULL AND @original_Details IS NULL)) AND (([Market_status] = @original_Market_status) OR ([Market_status] IS NULL AND @original_Market_status IS NULL)) AND (([Proof] = @original_Proof) OR ([Proof] IS NULL AND @original_Proof IS NULL)) AND (([Future] = @original_Future) OR ([Future] IS NULL AND @original_Future IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Idea_post_id" Type="Int32" />
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_C_name" Type="String" />
            <asp:Parameter Name="original_Website" Type="String" />
            <asp:Parameter Name="original_Country_id" Type="Int32" />
            <asp:Parameter Name="original_State_id" Type="Int32" />
            <asp:Parameter Name="original_City_id" Type="Int32" />
            <asp:Parameter Name="original_Category_id" Type="Int32" />
            <asp:Parameter Name="original_Category_id2" Type="Int32" />
            <asp:Parameter Name="original_Stage" Type="String" />
            <asp:Parameter Name="original_Investor_role" Type="String" />
            <asp:Parameter Name="original_Raise" Type="String" />
            <asp:Parameter Name="original_Min_investment" Type="String" />
            <asp:Parameter Name="original_Summary" Type="String" />
            <asp:Parameter Name="original_Details" Type="String" />
            <asp:Parameter Name="original_Market_status" Type="String" />
            <asp:Parameter Name="original_Proof" Type="String" />
            <asp:Parameter Name="original_Future" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Reg_id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="C_name" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Country_id" Type="Int32" />
            <asp:Parameter Name="State_id" Type="Int32" />
            <asp:Parameter Name="City_id" Type="Int32" />
            <asp:Parameter Name="Category_id" Type="Int32" />
            <asp:Parameter Name="Category_id2" Type="Int32" />
            <asp:Parameter Name="Stage" Type="String" />
            <asp:Parameter Name="Investor_role" Type="String" />
            <asp:Parameter Name="Raise" Type="String" />
            <asp:Parameter Name="Min_investment" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Market_status" Type="String" />
            <asp:Parameter Name="Proof" Type="String" />
            <asp:Parameter Name="Future" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Reg_id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="C_name" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Country_id" Type="Int32" />
            <asp:Parameter Name="State_id" Type="Int32" />
            <asp:Parameter Name="City_id" Type="Int32" />
            <asp:Parameter Name="Category_id" Type="Int32" />
            <asp:Parameter Name="Category_id2" Type="Int32" />
            <asp:Parameter Name="Stage" Type="String" />
            <asp:Parameter Name="Investor_role" Type="String" />
            <asp:Parameter Name="Raise" Type="String" />
            <asp:Parameter Name="Min_investment" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Market_status" Type="String" />
            <asp:Parameter Name="Proof" Type="String" />
            <asp:Parameter Name="Future" Type="String" />
            <asp:Parameter Name="original_Idea_post_id" Type="Int32" />
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_C_name" Type="String" />
            <asp:Parameter Name="original_Website" Type="String" />
            <asp:Parameter Name="original_Country_id" Type="Int32" />
            <asp:Parameter Name="original_State_id" Type="Int32" />
            <asp:Parameter Name="original_City_id" Type="Int32" />
            <asp:Parameter Name="original_Category_id" Type="Int32" />
            <asp:Parameter Name="original_Category_id2" Type="Int32" />
            <asp:Parameter Name="original_Stage" Type="String" />
            <asp:Parameter Name="original_Investor_role" Type="String" />
            <asp:Parameter Name="original_Raise" Type="String" />
            <asp:Parameter Name="original_Min_investment" Type="String" />
            <asp:Parameter Name="original_Summary" Type="String" />
            <asp:Parameter Name="original_Details" Type="String" />
            <asp:Parameter Name="original_Market_status" Type="String" />
            <asp:Parameter Name="original_Proof" Type="String" />
            <asp:Parameter Name="original_Future" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 1027px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>


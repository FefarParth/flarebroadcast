<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="IdeaPost.aspx.cs" Inherits="Admin_IdeaPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Idea_post_id" 
        DataSourceID="Admin_Idea" Width="1019px">
        <Columns>
            <asp:BoundField DataField="Idea_post_id" HeaderText="Idea_post_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Idea_post_id" 
                Visible="False" />
            <asp:BoundField DataField="Reg_id" HeaderText="Reg_id" 
                SortExpression="Reg_id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="C_name" HeaderText="C_name" SortExpression="C_name" 
                Visible="False" />
            <asp:BoundField DataField="Website" HeaderText="Website" 
                SortExpression="Website" Visible="False" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" 
                Visible="False" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" 
                Visible="False" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Category_2" HeaderText="Category_2" 
                SortExpression="Category_2" Visible="False" />
            <asp:BoundField DataField="Stage" HeaderText="Stage" SortExpression="Stage" />
            <asp:BoundField DataField="Investor_role" HeaderText="Investor_role" 
                SortExpression="Investor_role" />
            <asp:BoundField DataField="Raise" HeaderText="Raise" SortExpression="Raise" />
            <asp:BoundField DataField="Min_investment" HeaderText="Min_investment" 
                SortExpression="Min_investment" />
            <asp:BoundField DataField="Summary" HeaderText="Summary" 
                SortExpression="Summary" Visible="False" />
            <asp:BoundField DataField="Details" HeaderText="Details" 
                SortExpression="Details" Visible="False" />
            <asp:BoundField DataField="Market_status" HeaderText="Market_status" 
                SortExpression="Market_status" />
            <asp:BoundField DataField="Future" HeaderText="Future" SortExpression="Future" 
                Visible="False" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="Admin_Idea" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
        DeleteCommand="DELETE FROM [IdeaPost] WHERE [Idea_post_id] = @original_Idea_post_id AND (([Reg_id] = @original_Reg_id) OR ([Reg_id] IS NULL AND @original_Reg_id IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([C_name] = @original_C_name) OR ([C_name] IS NULL AND @original_C_name IS NULL)) AND (([Website] = @original_Website) OR ([Website] IS NULL AND @original_Website IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Category_2] = @original_Category_2) OR ([Category_2] IS NULL AND @original_Category_2 IS NULL)) AND (([Stage] = @original_Stage) OR ([Stage] IS NULL AND @original_Stage IS NULL)) AND (([Investor_role] = @original_Investor_role) OR ([Investor_role] IS NULL AND @original_Investor_role IS NULL)) AND (([Raise] = @original_Raise) OR ([Raise] IS NULL AND @original_Raise IS NULL)) AND (([Min_investment] = @original_Min_investment) OR ([Min_investment] IS NULL AND @original_Min_investment IS NULL)) AND (([Summary] = @original_Summary) OR ([Summary] IS NULL AND @original_Summary IS NULL)) AND (([Details] = @original_Details) OR ([Details] IS NULL AND @original_Details IS NULL)) AND (([Market_status] = @original_Market_status) OR ([Market_status] IS NULL AND @original_Market_status IS NULL)) AND (([Proof] = @original_Proof) OR ([Proof] IS NULL AND @original_Proof IS NULL)) AND (([Future] = @original_Future) OR ([Future] IS NULL AND @original_Future IS NULL))" 
        InsertCommand="INSERT INTO [IdeaPost] ([Reg_id], [Title], [C_name], [Website], [Country], [State], [City], [Category], [Category_2], [Stage], [Investor_role], [Raise], [Min_investment], [Summary], [Details], [Market_status], [Proof], [Future]) VALUES (@Reg_id, @Title, @C_name, @Website, @Country, @State, @City, @Category, @Category_2, @Stage, @Investor_role, @Raise, @Min_investment, @Summary, @Details, @Market_status, @Proof, @Future)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [IdeaPost]" 
        UpdateCommand="UPDATE [IdeaPost] SET [Reg_id] = @Reg_id, [Title] = @Title, [C_name] = @C_name, [Website] = @Website, [Country] = @Country, [State] = @State, [City] = @City, [Category] = @Category, [Category_2] = @Category_2, [Stage] = @Stage, [Investor_role] = @Investor_role, [Raise] = @Raise, [Min_investment] = @Min_investment, [Summary] = @Summary, [Details] = @Details, [Market_status] = @Market_status, [Proof] = @Proof, [Future] = @Future WHERE [Idea_post_id] = @original_Idea_post_id AND (([Reg_id] = @original_Reg_id) OR ([Reg_id] IS NULL AND @original_Reg_id IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([C_name] = @original_C_name) OR ([C_name] IS NULL AND @original_C_name IS NULL)) AND (([Website] = @original_Website) OR ([Website] IS NULL AND @original_Website IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Category_2] = @original_Category_2) OR ([Category_2] IS NULL AND @original_Category_2 IS NULL)) AND (([Stage] = @original_Stage) OR ([Stage] IS NULL AND @original_Stage IS NULL)) AND (([Investor_role] = @original_Investor_role) OR ([Investor_role] IS NULL AND @original_Investor_role IS NULL)) AND (([Raise] = @original_Raise) OR ([Raise] IS NULL AND @original_Raise IS NULL)) AND (([Min_investment] = @original_Min_investment) OR ([Min_investment] IS NULL AND @original_Min_investment IS NULL)) AND (([Summary] = @original_Summary) OR ([Summary] IS NULL AND @original_Summary IS NULL)) AND (([Details] = @original_Details) OR ([Details] IS NULL AND @original_Details IS NULL)) AND (([Market_status] = @original_Market_status) OR ([Market_status] IS NULL AND @original_Market_status IS NULL)) AND (([Proof] = @original_Proof) OR ([Proof] IS NULL AND @original_Proof IS NULL)) AND (([Future] = @original_Future) OR ([Future] IS NULL AND @original_Future IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Idea_post_id" Type="Int32" />
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_C_name" Type="String" />
            <asp:Parameter Name="original_Website" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_Category_2" Type="String" />
            <asp:Parameter Name="original_Stage" Type="String" />
            <asp:Parameter Name="original_Investor_role" Type="String" />
            <asp:Parameter Name="original_Raise" Type="String" />
            <asp:Parameter Name="original_Min_investment" Type="String" />
            <asp:Parameter Name="original_Summary" Type="String" />
            <asp:Parameter Name="original_Details" Type="String" />
            <asp:Parameter Name="original_Market_status" Type="String" />
            <asp:Parameter Name="original_Proof" Type="Object" />
            <asp:Parameter Name="original_Future" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Reg_id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="C_name" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Category_2" Type="String" />
            <asp:Parameter Name="Stage" Type="String" />
            <asp:Parameter Name="Investor_role" Type="String" />
            <asp:Parameter Name="Raise" Type="String" />
            <asp:Parameter Name="Min_investment" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Market_status" Type="String" />
            <asp:Parameter Name="Proof" Type="Object" />
            <asp:Parameter Name="Future" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Reg_id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="C_name" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Category_2" Type="String" />
            <asp:Parameter Name="Stage" Type="String" />
            <asp:Parameter Name="Investor_role" Type="String" />
            <asp:Parameter Name="Raise" Type="String" />
            <asp:Parameter Name="Min_investment" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Market_status" Type="String" />
            <asp:Parameter Name="Proof" Type="Object" />
            <asp:Parameter Name="Future" Type="String" />
            <asp:Parameter Name="original_Idea_post_id" Type="Int32" />
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_C_name" Type="String" />
            <asp:Parameter Name="original_Website" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_Category_2" Type="String" />
            <asp:Parameter Name="original_Stage" Type="String" />
            <asp:Parameter Name="original_Investor_role" Type="String" />
            <asp:Parameter Name="original_Raise" Type="String" />
            <asp:Parameter Name="original_Min_investment" Type="String" />
            <asp:Parameter Name="original_Summary" Type="String" />
            <asp:Parameter Name="original_Details" Type="String" />
            <asp:Parameter Name="original_Market_status" Type="String" />
            <asp:Parameter Name="original_Proof" Type="Object" />
            <asp:Parameter Name="original_Future" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>


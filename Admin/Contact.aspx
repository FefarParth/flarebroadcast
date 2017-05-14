<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Admin_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="C_id" 
        DataSourceID="AdminContact">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="C_id" HeaderText="C_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="C_id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email_id" HeaderText="Email_id" 
                SortExpression="Email_id" />
            <asp:BoundField DataField="Contact_number" HeaderText="Contact_number" 
                SortExpression="Contact_number" />
            <asp:BoundField DataField="CallBack" HeaderText="CallBack" 
                SortExpression="CallBack" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                SortExpression="Reason" />
            <asp:BoundField DataField="Message" HeaderText="Message" 
                SortExpression="Message" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="AdminContact" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
        DeleteCommand="DELETE FROM [Contact] WHERE [C_id] = @original_C_id AND [Name] = @original_Name AND [Email_id] = @original_Email_id AND [Contact_number] = @original_Contact_number AND (([CallBack] = @original_CallBack) OR ([CallBack] IS NULL AND @original_CallBack IS NULL)) AND [Reason] = @original_Reason AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL))" 
        InsertCommand="INSERT INTO [Contact] ([Name], [Email_id], [Contact_number], [CallBack], [Reason], [Message]) VALUES (@Name, @Email_id, @Contact_number, @CallBack, @Reason, @Message)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Contact]" 
        UpdateCommand="UPDATE [Contact] SET [Name] = @Name, [Email_id] = @Email_id, [Contact_number] = @Contact_number, [CallBack] = @CallBack, [Reason] = @Reason, [Message] = @Message WHERE [C_id] = @original_C_id AND [Name] = @original_Name AND [Email_id] = @original_Email_id AND [Contact_number] = @original_Contact_number AND (([CallBack] = @original_CallBack) OR ([CallBack] IS NULL AND @original_CallBack IS NULL)) AND [Reason] = @original_Reason AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_C_id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Email_id" Type="String" />
            <asp:Parameter Name="original_Contact_number" Type="String" />
            <asp:Parameter Name="original_CallBack" Type="String" />
            <asp:Parameter Name="original_Reason" Type="String" />
            <asp:Parameter Name="original_Message" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email_id" Type="String" />
            <asp:Parameter Name="Contact_number" Type="String" />
            <asp:Parameter Name="CallBack" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email_id" Type="String" />
            <asp:Parameter Name="Contact_number" Type="String" />
            <asp:Parameter Name="CallBack" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="original_C_id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Email_id" Type="String" />
            <asp:Parameter Name="original_Contact_number" Type="String" />
            <asp:Parameter Name="original_CallBack" Type="String" />
            <asp:Parameter Name="original_Reason" Type="String" />
            <asp:Parameter Name="original_Message" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>


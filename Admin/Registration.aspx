<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Admin_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Reg_id" 
        DataSourceID="AdminData">
        <Columns>
            <asp:BoundField DataField="Reg_id" HeaderText="Reg_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Reg_id" Visible="False" />
            <asp:BoundField DataField="F_name" HeaderText="F_name" 
                SortExpression="F_name" />
            <asp:BoundField DataField="L_name" HeaderText="L_name" 
                SortExpression="L_name" />
            <asp:BoundField DataField="Email_id" HeaderText="Email_id" 
                SortExpression="Email_id" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" Visible="False" />
            <asp:BoundField DataField="Contact_number" HeaderText="Contact_number" 
                SortExpression="Contact_number" />
            <asp:BoundField DataField="User_type" HeaderText="User_type" 
                SortExpression="User_type" />
            <asp:BoundField DataField="User_status" HeaderText="User_status" 
                SortExpression="User_status" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="AdminData" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
        DeleteCommand="DELETE FROM [SignUp] WHERE [Reg_id] = @original_Reg_id AND [F_name] = @original_F_name AND [L_name] = @original_L_name AND [Email_id] = @original_Email_id AND [Password] = @original_Password AND [Contact_number] = @original_Contact_number AND [User_type] = @original_User_type AND (([User_status] = @original_User_status) OR ([User_status] IS NULL AND @original_User_status IS NULL))" 
        InsertCommand="INSERT INTO [SignUp] ([F_name], [L_name], [Email_id], [Password], [Contact_number], [User_type], [User_status]) VALUES (@F_name, @L_name, @Email_id, @Password, @Contact_number, @User_type, @User_status)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Reg_id], [F_name], [L_name], [Email_id], [Password], [Contact_number], [User_type], [User_status] FROM [SignUp]" 
        UpdateCommand="UPDATE [SignUp] SET [F_name] = @F_name, [L_name] = @L_name, [Email_id] = @Email_id, [Password] = @Password, [Contact_number] = @Contact_number, [User_type] = @User_type, [User_status] = @User_status WHERE [Reg_id] = @original_Reg_id AND [F_name] = @original_F_name AND [L_name] = @original_L_name AND [Email_id] = @original_Email_id AND [Password] = @original_Password AND [Contact_number] = @original_Contact_number AND [User_type] = @original_User_type AND (([User_status] = @original_User_status) OR ([User_status] IS NULL AND @original_User_status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_F_name" Type="String" />
            <asp:Parameter Name="original_L_name" Type="String" />
            <asp:Parameter Name="original_Email_id" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Contact_number" Type="String" />
            <asp:Parameter Name="original_User_type" Type="String" />
            <asp:Parameter Name="original_User_status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="F_name" Type="String" />
            <asp:Parameter Name="L_name" Type="String" />
            <asp:Parameter Name="Email_id" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Contact_number" Type="String" />
            <asp:Parameter Name="User_type" Type="String" />
            <asp:Parameter Name="User_status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="F_name" Type="String" />
            <asp:Parameter Name="L_name" Type="String" />
            <asp:Parameter Name="Email_id" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Contact_number" Type="String" />
            <asp:Parameter Name="User_type" Type="String" />
            <asp:Parameter Name="User_status" Type="String" />
            <asp:Parameter Name="original_Reg_id" Type="Int32" />
            <asp:Parameter Name="original_F_name" Type="String" />
            <asp:Parameter Name="original_L_name" Type="String" />
            <asp:Parameter Name="original_Email_id" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Contact_number" Type="String" />
            <asp:Parameter Name="original_User_type" Type="String" />
            <asp:Parameter Name="original_User_status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>


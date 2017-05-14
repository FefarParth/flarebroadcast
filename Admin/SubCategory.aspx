<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="SubCategory.aspx.cs" Inherits="Admin_SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="width: 100%">
    <tr>
        <td style="width: 247px">
                &nbsp;</td>
        <td class="box_3" colspan="2" 
                style="font-size: large; font-weight: bold; text-decoration: underline">
            List of SubCategory</td>
        <td class="box_3">
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 247px">
                &nbsp;</td>
        <td style="width: 247px">
                &nbsp;</td>
        <td style="width: 21px">
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 247px">
                &nbsp;</td>
        <td style="width: 247px">
            &nbsp;Category</td>
        <td style="width: 21px">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CategoryData" 
                    DataTextField="Category_title" DataValueField="Category_id" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="CategoryData" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                DeleteCommand="DELETE FROM [Category] WHERE [Category_id] = @original_Category_id AND (([Category_title] = @original_Category_title) OR ([Category_title] IS NULL AND @original_Category_title IS NULL)) AND (([Category_description] = @original_Category_description) OR ([Category_description] IS NULL AND @original_Category_description IS NULL))" 
                InsertCommand="INSERT INTO [Category] ([Category_title], [Category_description]) VALUES (@Category_title, @Category_description)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [Category_id], [Category_title], [Category_description] FROM [Category]" 
                UpdateCommand="UPDATE [Category] SET [Category_title] = @Category_title, [Category_description] = @Category_description WHERE [Category_id] = @original_Category_id AND (([Category_title] = @original_Category_title) OR ([Category_title] IS NULL AND @original_Category_title IS NULL)) AND (([Category_description] = @original_Category_description) OR ([Category_description] IS NULL AND @original_Category_description IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Category_id" Type="Int32" />
                    <asp:Parameter Name="original_Category_title" Type="String" />
                    <asp:Parameter Name="original_Category_description" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Category_title" Type="String" />
                    <asp:Parameter Name="Category_description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Category_title" Type="String" />
                    <asp:Parameter Name="Category_description" Type="String" />
                    <asp:Parameter Name="original_Category_id" Type="Int32" />
                    <asp:Parameter Name="original_Category_title" Type="String" />
                    <asp:Parameter Name="original_Category_description" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 247px">
                &nbsp;</td>
        <td style="width: 247px">
            Add New Sub Category</td>
        <td style="width: 21px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 247px">
                &nbsp;</td>
        <td style="width: 247px">
                &nbsp;</td>
        <td style="width: 21px">
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 247px">
                &nbsp;</td>
        <td>
                &nbsp;</td>
        <td style="width: 21px">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        </td>
        <td>
                &nbsp;</td>
    </tr>
</table>

</asp:Content>


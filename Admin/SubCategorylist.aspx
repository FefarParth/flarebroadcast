<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="SubCategorylist.aspx.cs" Inherits="Admin_SubCategorylist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                SubCategory List</td>
        </tr>
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add New Sub Category" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView15" runat="server"  
                    AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                    DataKeyNames="Sub_category_id" Width="573px" 
                    >
                    <Columns>
                        <asp:BoundField DataField="Category_title" HeaderText="Category" 
                            SortExpression="Category_title" />
                        <asp:BoundField DataField="Sub_category_id" HeaderText="Sub_category_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Sub_category_id" 
                            Visible="False" />
                        <asp:BoundField DataField="Category_id" HeaderText="Category_id" 
                            SortExpression="Category_id" Visible="False" />
                        <asp:BoundField DataField="Sub_category_title" HeaderText="Sub Category" 
                            SortExpression="Sub_category_title" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SubCategoryData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    DeleteCommand="DELETE FROM [SubCategory] WHERE [Sub_category_id] = @original_Sub_category_id AND (([Category_id] = @original_Category_id) OR ([Category_id] IS NULL AND @original_Category_id IS NULL)) AND (([Sub_category_title] = @original_Sub_category_title) OR ([Sub_category_title] IS NULL AND @original_Sub_category_title IS NULL))" 
                    InsertCommand="INSERT INTO [SubCategory] ([Category_id], [Sub_category_title]) VALUES (@Category_id, @Sub_category_title)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Sub_category_id], [Category_id], [Sub_category_title] FROM [SubCategory]" 
                    UpdateCommand="UPDATE [SubCategory] SET [Category_id] = @Category_id, [Sub_category_title] = @Sub_category_title WHERE [Sub_category_id] = @original_Sub_category_id AND (([Category_id] = @original_Category_id) OR ([Category_id] IS NULL AND @original_Category_id IS NULL)) AND (([Sub_category_title] = @original_Sub_category_title) OR ([Sub_category_title] IS NULL AND @original_Sub_category_title IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Sub_category_id" Type="Int32" />
                        <asp:Parameter Name="original_Category_id" Type="Int32" />
                        <asp:Parameter Name="original_Sub_category_title" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Category_id" Type="Int32" />
                        <asp:Parameter Name="Sub_category_title" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Category_id" Type="Int32" />
                        <asp:Parameter Name="Sub_category_title" Type="String" />
                        <asp:Parameter Name="original_Sub_category_id" Type="Int32" />
                        <asp:Parameter Name="original_Category_id" Type="Int32" />
                        <asp:Parameter Name="original_Sub_category_title" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CategoryList.aspx.cs" Inherits="Admin_CategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td class="box_3" 
                style="font-size: large; font-weight: bold; text-decoration: underline; width: 1082px; height: 26px;">
            </td>
            <td class="box_3" 
                style="font-size: large; font-weight: bold; text-decoration: underline; width: 1082px; height: 26px;">
                Category List</td>
        </tr>
        <tr>
            <td class="box_3" style="width: 1082px">
                &nbsp;</td>
            <td class="box_3" style="width: 1082px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="box_3" style="width: 1082px">
                &nbsp;</td>
            <td class="box_3" style="width: 1082px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add New Category" />
            </td>
        </tr>
        <tr>
            <td style="width: 1082px">
                &nbsp;</td>
            <td style="width: 1082px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1082px">
                &nbsp;</td>
            <td style="width: 1082px">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Category_id" DataSourceID="CategoryData" ForeColor="#333333" 
        GridLines="None"  
        Width="992px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Category_id" HeaderText="Category_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Category_id" />
            <asp:BoundField DataField="Category_title" HeaderText="Category_title" 
                SortExpression="Category_title" />
            <asp:BoundField DataField="Category_description" 
                HeaderText="Category_description" SortExpression="Category_description" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 1082px">
                &nbsp;</td>
            <td style="width: 1082px">
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="CategoryData" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
        DeleteCommand="DELETE FROM [Category] WHERE [Category_id] = @original_Category_id AND (([Category_title] = @original_Category_title) OR ([Category_title] IS NULL AND @original_Category_title IS NULL)) AND (([Category_description] = @original_Category_description) OR ([Category_description] IS NULL AND @original_Category_description IS NULL))" 
        InsertCommand="INSERT INTO [Category] ([Category_title], [Category_description]) VALUES (@Category_title, @Category_description)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Category]" 
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

</asp:Content>


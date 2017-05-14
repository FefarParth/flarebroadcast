<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Statelist.aspx.cs" Inherits="Admin_Statelist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <table style="width: 100%">
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                State List</td>
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
                <asp:Button ID="Button1" runat="server" Text="Add New State" 
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
                <asp:GridView ID="GridView1" runat="server" DataSourceID="StateData" 
                    AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                    DataKeyNames="State_id" Width="573px">
                    <Columns>
                        <asp:BoundField DataField="State_id" HeaderText="State_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="State_id" 
                            Visible="False" />
                        <asp:BoundField DataField="Country_id" HeaderText="Country_id" 
                            SortExpression="Country_id" Visible="False" />
                        <asp:BoundField DataField="State_title" HeaderText="State_title" 
                            SortExpression="State_title" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="StateData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    DeleteCommand="DELETE FROM [State] WHERE [State_id] = @original_State_id AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL)) AND (([State_title] = @original_State_title) OR ([State_title] IS NULL AND @original_State_title IS NULL))" 
                    InsertCommand="INSERT INTO [State] ([Country_id], [State_title]) VALUES (@Country_id, @State_title)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [State_id], [Country_id], [State_title] FROM [State]" 
                    
                    UpdateCommand="UPDATE [State] SET [Country_id] = @Country_id, [State_title] = @State_title WHERE [State_id] = @original_State_id AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL)) AND (([State_title] = @original_State_title) OR ([State_title] IS NULL AND @original_State_title IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
                        <asp:Parameter Name="original_State_title" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Country_id" Type="Int32" />
                        <asp:Parameter Name="State_title" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Country_id" Type="Int32" />
                        <asp:Parameter Name="State_title" Type="String" />
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
                        <asp:Parameter Name="original_State_title" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="CountryData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    DeleteCommand="DELETE FROM [Country] WHERE [Country_id] = @original_Country_id AND (([Country_title] = @original_Country_title) OR ([Country_title] IS NULL AND @original_Country_title IS NULL))" 
                    InsertCommand="INSERT INTO [Country] ([Country_title]) VALUES (@Country_title)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Country]" 
                    UpdateCommand="UPDATE [Country] SET [Country_title] = @Country_title WHERE [Country_id] = @original_Country_id AND (([Country_title] = @original_Country_title) OR ([Country_title] IS NULL AND @original_Country_title IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
                        <asp:Parameter Name="original_Country_title" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Country_title" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Country_title" Type="String" />
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
                        <asp:Parameter Name="original_Country_title" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>


</asp:Content>


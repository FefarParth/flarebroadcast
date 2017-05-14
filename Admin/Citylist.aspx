<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Citylist.aspx.cs" Inherits="Admin_Citylist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <table style="width: 100%">
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                City List</td>
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
                <asp:Button ID="Button1" runat="server" Text="Add New City" 
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
                <asp:GridView ID="GridView1" runat="server" DataSourceID="CityData" 
                    AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                    DataKeyNames="City_id" Width="573px">
                    <Columns>
                        <asp:BoundField DataField="City_id" HeaderText="City_id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="City_id" Visible="False" />
                        <asp:BoundField DataField="State_id" HeaderText="State_id" 
                            SortExpression="State_id" Visible="False" />
                        <asp:BoundField DataField="City_title" HeaderText="City_title" 
                            SortExpression="City_title" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="CityData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    DeleteCommand="DELETE FROM [City] WHERE [City_id] = @original_City_id AND (([State_id] = @original_State_id) OR ([State_id] IS NULL AND @original_State_id IS NULL)) AND (([City_title] = @original_City_title) OR ([City_title] IS NULL AND @original_City_title IS NULL))" 
                    InsertCommand="INSERT INTO [City] ([State_id], [City_title]) VALUES (@State_id, @City_title)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [City_id], [State_id], [City_title] FROM [City]" 
                    
                    UpdateCommand="UPDATE [City] SET [State_id] = @State_id, [City_title] = @City_title WHERE [City_id] = @original_City_id AND (([State_id] = @original_State_id) OR ([State_id] IS NULL AND @original_State_id IS NULL)) AND (([City_title] = @original_City_title) OR ([City_title] IS NULL AND @original_City_title IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_City_id" Type="Int32" />
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_City_title" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="State_id" Type="Int32" />
                        <asp:Parameter Name="City_title" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="State_id" Type="Int32" />
                        <asp:Parameter Name="City_title" Type="String" />
                        <asp:Parameter Name="original_City_id" Type="Int32" />
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_City_title" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="StateData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    DeleteCommand="DELETE FROM [State] WHERE [State_id] = @original_State_id AND (([State_title] = @original_State_title) OR ([State_title] IS NULL AND @original_State_title IS NULL))" 
                    InsertCommand="INSERT INTO [State] ([State_title]) VALUES (@State_title)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [State]" 
                    UpdateCommand="UPDATE [State] SET [State_title] = @State_title WHERE [State_id] = @original_State_id AND (([State_title] = @original_State_title) OR ([State_title] IS NULL AND @original_State_title IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_State_title" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="State_title" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="State_title" Type="String" />
                        <asp:Parameter Name="original_State_id" Type="Int32" />
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


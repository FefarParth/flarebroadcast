<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Countrylist.aspx.cs" Inherits="Admin_Countrylist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <table style="width: 100%">
        <tr>
            <td style="width: 110px">
                &nbsp;</td>
            <td>
                Country List</td>
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
                <asp:Button ID="Button1" runat="server" Text="Add New Country" 
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
                <asp:GridView ID="GridView1" runat="server" DataSourceID="CountryData" 
                    AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                    DataKeyNames="Country_id" Width="573px">
                    <Columns>
                        <asp:BoundField DataField="Country_id" HeaderText="Country_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Country_id" 
                            Visible="False" />
                        <asp:BoundField DataField="Country_title" HeaderText="Country_title" 
                            SortExpression="Country_title" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="Admin_City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <table style="width: 100%">
        <tr>
            <td style="width: 247px">
                &nbsp;</td>
            <td class="box_3" colspan="2" 
                style="font-size: large; font-weight: bold; text-decoration: underline">
                List of City</td>
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
                &nbsp;Country</td>
            <td style="width: 21px">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="CountryData" 
                    DataTextField="Country_title" DataValueField="Country_id" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CountryData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [Country_title], [Country_id] FROM [Country]" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [Country] WHERE [Country_id] = @original_Country_id AND (([Country_title] = @original_Country_title) OR ([Country_title] IS NULL AND @original_Country_title IS NULL))" 
                    InsertCommand="INSERT INTO [Country] ([Country_title]) VALUES (@Country_title)" 
                    OldValuesParameterFormatString="original_{0}" 
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
            <td style="width: 247px">
                &nbsp;States</td>
            <td style="width: 21px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="StateData" 
                    DataTextField="State_title" DataValueField="State_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="StateData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    DeleteCommand="DELETE FROM [State] WHERE [State_id] = @original_State_id AND (([State_title] = @original_State_title) OR ([State_title] IS NULL AND @original_State_title IS NULL)) AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL))" 
                    InsertCommand="INSERT INTO [State] ([State_title], [Country_id]) VALUES (@State_title, @Country_id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [State_id], [State_title], [Country_id] FROM [State] WHERE ([Country_id] = @Country_id)" 
                    UpdateCommand="UPDATE [State] SET [State_title] = @State_title, [Country_id] = @Country_id WHERE [State_id] = @original_State_id AND (([State_title] = @original_State_title) OR ([State_title] IS NULL AND @original_State_title IS NULL)) AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_State_title" Type="String" />
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="State_title" Type="String" />
                        <asp:Parameter Name="Country_id" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="Country_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="State_title" Type="String" />
                        <asp:Parameter Name="Country_id" Type="Int32" />
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_State_title" Type="String" />
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
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
                Add New City</td>
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


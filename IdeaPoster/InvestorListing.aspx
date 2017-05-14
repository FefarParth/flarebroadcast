<%@ Page Title="" Language="C#" MasterPageFile="~/IdeaPoster/IdeaMaster.master" AutoEventWireup="true" CodeFile="InvestorListing.aspx.cs" Inherits="Investor_InvestorListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 1349px" bgcolor="#66FF33">
        <tr>
            <td style="width: 118px">
                &nbsp;</td>
            <td>

    <asp:GridView runat="server" ID="grdCustomPagging" 
        OnRowCommand="grdCustomPagging_RowCommand" AutoGenerateColumns="False" 
        Width="926px" 
        onselectedindexchanged="grdCustomPagging_SelectedIndexChanged" BackColor="White" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                    ForeColor="Black" GridLines="Vertical" Height="188px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Full_name" HeaderText="Poster Name" 
                SortExpression="Full_name" />
            <asp:BoundField DataField="Intrest" HeaderText="Title" />
            <asp:BoundField DataField="Category_title" HeaderText="Category" 
                SortExpression="Category_title" />
            <asp:BoundField DataField="State_title" HeaderText="Location" 
                SortExpression="State_title" />
            <asp:TemplateField HeaderText="Details">
                <ItemTemplate>
                    <asp:LinkButton ID="ViewMore" runat="server" CommandArgument='<%#Eval("Investor_post_id") %>'
         CommandName="VIEW">View More</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Investor_post_id" HeaderText="Investor post Id" 
                Visible="False" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 118px">
                &nbsp;</td>
            <td>
    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" 
        Visible="False"></asp:Label>

            </td>
        </tr>
    </table>

</asp:Content>


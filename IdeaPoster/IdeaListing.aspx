<%@ Page Title="" Language="C#" MasterPageFile="~/FlareMaster.master" AutoEventWireup="true" CodeFile="IdeaListing.aspx.cs" Inherits="IdeaListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:GridView runat="server" ID="grdCustomPagging" 
        OnRowCommand="grdCustomPagging_RowCommand" AutoGenerateColumns="False" 
        Width="1349px" 
    onselectedindexchanged="grdCustomPagging_SelectedIndexChanged" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black">

<Columns>
    <asp:BoundField DataField="Full_name" HeaderText="Name"
            SortExpression="Full_name" />
<asp:BoundField DataField="Idea_post_id" HeaderText="Idea Post Id" 
        Visible="False" />
<asp:BoundField DataField="Title" HeaderText="Title of Idea" />

    <asp:BoundField DataField="Category_title" HeaderText="Category" 
        SortExpression="Category_title" />
    <asp:BoundField DataField="City_title" HeaderText="Location" 
        SortExpression="City_title" />

<asp:TemplateField HeaderText="Details">
<ItemTemplate>
<asp:LinkButton ID="ViewMore" runat="server" CommandArgument='<%#Eval("Idea_post_id") %>'
         CommandName="VIEW">View More</asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>

</Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>


</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Investor/InvestorMaster.master" AutoEventWireup="true" CodeFile="InvestorListing.aspx.cs" Inherits="Investor_InvestorListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView runat="server" ID="grdCustomPagging" 
        OnRowCommand="grdCustomPagging_RowCommand" AutoGenerateColumns="False" 
        Width="962px" 
        onselectedindexchanged="grdCustomPagging_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Investor_post_id" HeaderText="Investor post Id" 
                Visible="False" />
            <asp:BoundField DataField="Intrest" HeaderText="Intrests" />
            <asp:TemplateField HeaderText="Details">
                <ItemTemplate>
                    <asp:LinkButton ID="ViewMore" runat="server" CommandArgument='<%#Eval("Investor_post_id") %>'
         CommandName="VIEW">View More</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>


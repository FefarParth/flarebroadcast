<%@ Page Title="" Language="C#" MasterPageFile="~/Investor/InvestorMaster.master" AutoEventWireup="true" CodeFile="InvestorPostAppliers.aspx.cs" Inherits="Investor_InvestorPostAppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 371px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 371px">
                <asp:GridView ID="GridView5" runat="server" AllowPaging="True" OnRowCommand="GridView5_RowCommand"
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Investor_apply_id" 
                     Width="981px">
                    <Columns>
                        <asp:BoundField DataField="Full_name" HeaderText="Name" 
                            SortExpression="Full_name" />
                                                
                        <asp:BoundField DataField="Email_id" HeaderText="Email" 
                            SortExpression="Email_id" />
                                                
                        <asp:BoundField DataField="Investor_apply_id" HeaderText="Investor_apply_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Investor_apply_id" 
                            Visible="False" />
                        <asp:BoundField DataField="Investor_post_id" HeaderText="Investor_post_id" SortExpression="Investor_post_id" 
                            Visible="False" />
                        <asp:BoundField DataField="Reg_id" HeaderText="Reg_id" 
                            SortExpression="Reg_id" Visible="False" />
                        <asp:BoundField DataField="Message" HeaderText="Message" 
                            SortExpression="Message" />
                        <asp:BoundField DataField="Date" HeaderText="Date" 
                            SortExpression="Date" />
                        <asp:BoundField DataField="Contact_number" HeaderText="Contact" 
                            SortExpression="Contact_number" />

                            <asp:TemplateField>
                                 <ItemTemplate>
                                  <asp:Button ID="Award" runat="server" Text="Award" CommandArgument='<%#Eval("Reg_id") %>'
                                  CommandName="Award1"></asp:Button>
                                  </ItemTemplate>
                            </asp:TemplateField>


                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="InvestorPostAppliersData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT * FROM [InvestorApply]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 371px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


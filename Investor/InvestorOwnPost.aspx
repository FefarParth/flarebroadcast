<%@ Page Title="" Language="C#" MasterPageFile="~/Investor/InvestorMaster.master" AutoEventWireup="true" CodeFile="InvestorOwnPost.aspx.cs" Inherits="Investor_InvestorOwnPost" %>

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
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Investor_post_id" 
                     Width="815px">
                    <Columns>
                        <asp:BoundField DataField="Investor_post_id" HeaderText="Investor_post_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Investor_post_id" 
                            Visible="False" />
                        <asp:BoundField DataField="Reg_id" HeaderText="Reg_id" SortExpression="Reg_id" 
                            Visible="False" />
                        <asp:BoundField DataField="Intrest" HeaderText="Intrest" 
                            SortExpression="Intrest" />
                        <asp:BoundField DataField="Min_grub" HeaderText="Min_grub" 
                            SortExpression="Min_grub" Visible="False" />
                        <asp:BoundField DataField="Max_grub" HeaderText="Max_grub" 
                            SortExpression="Max_grub" Visible="False" />
                        <asp:BoundField DataField="Category_id" HeaderText="Category_id" 
                            SortExpression="Category_id" Visible="False" />
                        <asp:BoundField DataField="Sub_category_id" HeaderText="Sub_category_id" 
                            SortExpression="Sub_category_id" Visible="False" />
                        <asp:BoundField DataField="Country_id" HeaderText="Country_id" 
                            SortExpression="Country_id" Visible="False" />
                        <asp:BoundField DataField="State_id" HeaderText="State_id" 
                            SortExpression="State_id" Visible="False" />
                        <asp:BoundField DataField="City_id" HeaderText="City_id" 
                            SortExpression="City_id" Visible="False" />
                        <asp:BoundField DataField="Professional_background" 
                            HeaderText="Professional_background" SortExpression="Professional_background" 
                            Visible="False" />
                        <asp:BoundField DataField="Category_title" HeaderText="Category" 
                            SortExpression="Category_title" />
                      
                      
                        <asp:TemplateField HeaderText="Details">
                      
                        <ItemTemplate>
                                <asp:LinkButton ID="ViewMore" runat="server" CommandArgument='<%#Eval("Investor_post_id") %>'
                                CommandName="VIEW">View More</asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                    
                    
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="InvestorPostData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    DeleteCommand="DELETE FROM [InvestorPost] WHERE [Investor_post_id] = @original_Investor_post_id AND (([Reg_id] = @original_Reg_id) OR ([Reg_id] IS NULL AND @original_Reg_id IS NULL)) AND (([Intrest] = @original_Intrest) OR ([Intrest] IS NULL AND @original_Intrest IS NULL)) AND (([Min_grub] = @original_Min_grub) OR ([Min_grub] IS NULL AND @original_Min_grub IS NULL)) AND (([Max_grub] = @original_Max_grub) OR ([Max_grub] IS NULL AND @original_Max_grub IS NULL)) AND (([Category_id] = @original_Category_id) OR ([Category_id] IS NULL AND @original_Category_id IS NULL)) AND (([Sub_category_id] = @original_Sub_category_id) OR ([Sub_category_id] IS NULL AND @original_Sub_category_id IS NULL)) AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL)) AND (([State_id] = @original_State_id) OR ([State_id] IS NULL AND @original_State_id IS NULL)) AND (([City_id] = @original_City_id) OR ([City_id] IS NULL AND @original_City_id IS NULL)) AND (([Professional_background] = @original_Professional_background) OR ([Professional_background] IS NULL AND @original_Professional_background IS NULL))" 
                    InsertCommand="INSERT INTO [InvestorPost] ([Reg_id], [Intrest], [Min_grub], [Max_grub], [Category_id], [Sub_category_id], [Country_id], [State_id], [City_id], [Professional_background]) VALUES (@Reg_id, @Intrest, @Min_grub, @Max_grub, @Category_id, @Sub_category_id, @Country_id, @State_id, @City_id, @Professional_background)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [InvestorPost]" 
                    UpdateCommand="UPDATE [InvestorPost] SET [Reg_id] = @Reg_id, [Intrest] = @Intrest, [Min_grub] = @Min_grub, [Max_grub] = @Max_grub, [Category_id] = @Category_id, [Sub_category_id] = @Sub_category_id, [Country_id] = @Country_id, [State_id] = @State_id, [City_id] = @City_id, [Professional_background] = @Professional_background WHERE [Investor_post_id] = @original_Investor_post_id AND (([Reg_id] = @original_Reg_id) OR ([Reg_id] IS NULL AND @original_Reg_id IS NULL)) AND (([Intrest] = @original_Intrest) OR ([Intrest] IS NULL AND @original_Intrest IS NULL)) AND (([Min_grub] = @original_Min_grub) OR ([Min_grub] IS NULL AND @original_Min_grub IS NULL)) AND (([Max_grub] = @original_Max_grub) OR ([Max_grub] IS NULL AND @original_Max_grub IS NULL)) AND (([Category_id] = @original_Category_id) OR ([Category_id] IS NULL AND @original_Category_id IS NULL)) AND (([Sub_category_id] = @original_Sub_category_id) OR ([Sub_category_id] IS NULL AND @original_Sub_category_id IS NULL)) AND (([Country_id] = @original_Country_id) OR ([Country_id] IS NULL AND @original_Country_id IS NULL)) AND (([State_id] = @original_State_id) OR ([State_id] IS NULL AND @original_State_id IS NULL)) AND (([City_id] = @original_City_id) OR ([City_id] IS NULL AND @original_City_id IS NULL)) AND (([Professional_background] = @original_Professional_background) OR ([Professional_background] IS NULL AND @original_Professional_background IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Investor_post_id" Type="Int32" />
                        <asp:Parameter Name="original_Reg_id" Type="Int32" />
                        <asp:Parameter Name="original_Intrest" Type="String" />
                        <asp:Parameter Name="original_Min_grub" Type="String" />
                        <asp:Parameter Name="original_Max_grub" Type="String" />
                        <asp:Parameter Name="original_Category_id" Type="Int32" />
                        <asp:Parameter Name="original_Sub_category_id" Type="Int32" />
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_City_id" Type="Int32" />
                        <asp:Parameter Name="original_Professional_background" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Reg_id" Type="Int32" />
                        <asp:Parameter Name="Intrest" Type="String" />
                        <asp:Parameter Name="Min_grub" Type="String" />
                        <asp:Parameter Name="Max_grub" Type="String" />
                        <asp:Parameter Name="Category_id" Type="Int32" />
                        <asp:Parameter Name="Sub_category_id" Type="Int32" />
                        <asp:Parameter Name="Country_id" Type="Int32" />
                        <asp:Parameter Name="State_id" Type="Int32" />
                        <asp:Parameter Name="City_id" Type="Int32" />
                        <asp:Parameter Name="Professional_background" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Reg_id" Type="Int32" />
                        <asp:Parameter Name="Intrest" Type="String" />
                        <asp:Parameter Name="Min_grub" Type="String" />
                        <asp:Parameter Name="Max_grub" Type="String" />
                        <asp:Parameter Name="Category_id" Type="Int32" />
                        <asp:Parameter Name="Sub_category_id" Type="Int32" />
                        <asp:Parameter Name="Country_id" Type="Int32" />
                        <asp:Parameter Name="State_id" Type="Int32" />
                        <asp:Parameter Name="City_id" Type="Int32" />
                        <asp:Parameter Name="Professional_background" Type="String" />
                        <asp:Parameter Name="original_Investor_post_id" Type="Int32" />
                        <asp:Parameter Name="original_Reg_id" Type="Int32" />
                        <asp:Parameter Name="original_Intrest" Type="String" />
                        <asp:Parameter Name="original_Min_grub" Type="String" />
                        <asp:Parameter Name="original_Max_grub" Type="String" />
                        <asp:Parameter Name="original_Category_id" Type="Int32" />
                        <asp:Parameter Name="original_Sub_category_id" Type="Int32" />
                        <asp:Parameter Name="original_Country_id" Type="Int32" />
                        <asp:Parameter Name="original_State_id" Type="Int32" />
                        <asp:Parameter Name="original_City_id" Type="Int32" />
                        <asp:Parameter Name="original_Professional_background" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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


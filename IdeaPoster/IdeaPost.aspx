<%@ Page Title="" Language="C#" MasterPageFile="~/IdeaPoster/IdeaMaster.master" AutoEventWireup="true" CodeFile="IdeaPost.aspx.cs" Inherits="IdeaPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <table style="width: 100%" bgcolor="#66FF33">
        <tr>
            <td class="box_3" colspan="3">
                <strong style="font-weight: bold; ">POST YOUR IDEA</strong></td>
        </tr>
        <tr>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 507px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 426px; height: 36px">
                &nbsp;</td>
            <td style="width: 426px; height: 36px">
                Proposal Title</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="eg. Film Making or Ceramics Tiles Production,etc" 
                    ToolTip="&quot;What are you going to call your proposal? Your company/product name is usually a good way to start…”"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Mandatory Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 426px">
                Company Name</td>
            <td style="width: 507px">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="eg. KQ PG Planet" 
                    ToolTip="&quot;What’s the name of your company? If you don’t have one yet, just leave this blank.”"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 426px">
                Website</td>
            <td style="width: 507px">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="eg. NamoDeals.in"
                    ToolTip="&quot;What’s your website address? Again, leave this blank if you don’t have one.”"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 426px">
                Where is the Management Located?</td>
            <td style="width: 507px">
                Country:<asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                    DataSourceID="CountryData" DataTextField="Country_title" 
                    DataValueField="Country_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CountryData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [Country_id], [Country_title] FROM [Country]">
                </asp:SqlDataSource>
                &nbsp;State:<asp:DropDownList ID="DropDownList9" runat="server" 
                    AutoPostBack="True" DataSourceID="StateData" DataTextField="State_title" 
                    DataValueField="State_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="StateData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [State_id], [Country_id], [State_title] FROM [State] WHERE ([Country_id] = @Country_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList8" Name="Country_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;City:<asp:DropDownList ID="DropDownList10" runat="server" 
                    DataSourceID="CityData" DataTextField="City_title" DataValueField="City_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CityData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [City_id], [City_title], [State_id] FROM [City] WHERE ([State_id] = @State_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList9" Name="State_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 426px; height: 36px;">
                </td>
            <td style="width: 426px; height: 36px;">
                Category</td>
            <td style="width: 507px; height: 36px;">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    
                    ToolTip="“Which of the options in the dropdown list best fits your business? The Category you choose will help match you with our investors, so make sure you pick the right one!”" 
                    DataSourceID="CategoryData" DataTextField="Category_title" 
                    DataValueField="Category_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CategoryData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [Category_title], [Category_id] FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 426px">
                Category 2(Opitional)</td>
            <td style="width: 507px">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    
                    ToolTip="“Selecting a second option will match you with even more investors, but don’t worry if you can’t find one that fits – it’s better to be accurate.”" 
                    DataSourceID="CategoryData" DataTextField="Category_title" 
                    DataValueField="Category_id">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 426px">
                Stage</td>
            <td style="width: 507px">
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    ToolTip="“Are you at the very start of your venture or have you made some progress; and if so, how much?”">
                    <asp:ListItem Selected="True">Pre-Startup/R&amp;D</asp:ListItem>
                    <asp:ListItem>Minimum Viable Product (MVP)</asp:ListItem>
                    <asp:ListItem>Growth &amp; Established</asp:ListItem>
                    <asp:ListItem>Expansion</asp:ListItem>
                    <asp:ListItem>Maturity And Possible Exit</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 426px">
                &nbsp;</td>
            <td style="width: 426px">
                Ideal Investor Role</td>
            <td style="width: 507px">
                <asp:DropDownList ID="DropDownList5" runat="server" 
                    ToolTip="How active would your ideal investor be in helping your company?”">
                    <asp:ListItem>Silent Investor</asp:ListItem>
                    <asp:ListItem>Daily Involvement</asp:ListItem>
                    <asp:ListItem>Weekly Involvement</asp:ListItem>
                    <asp:ListItem>Monthly Involvement</asp:ListItem>
                    <asp:ListItem>Any</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 426px">
                &nbsp;</td>
            <td style="height: 36px; width: 426px">
                If you did a previous round, how much did you raise?</td>
            <td style="width: 507px; height: 36px">
                <asp:DropDownList ID="DropDownList6" runat="server" 
                    ToolTip="Have You Ever raised any funding before? Our investors like to see proof of effort and commitment!”">
                    <asp:ListItem Selected="True">0</asp:ListItem>
                    <asp:ListItem>10,000</asp:ListItem>
                    <asp:ListItem>25,000</asp:ListItem>
                    <asp:ListItem>50,000</asp:ListItem>
                    <asp:ListItem>1,00,000</asp:ListItem>
                    <asp:ListItem>2,50,000</asp:ListItem>
                    <asp:ListItem>5,00,000</asp:ListItem>
                    <asp:ListItem>10,00,000</asp:ListItem>
                    <asp:ListItem>15,00,000</asp:ListItem>
                    <asp:ListItem>20,00,000</asp:ListItem>
                    <asp:ListItem>25,00,000</asp:ListItem>
                    <asp:ListItem>30,00,000</asp:ListItem>
                    <asp:ListItem>40,00,000</asp:ListItem>
                    <asp:ListItem>50,00,000</asp:ListItem>
                    <asp:ListItem>60,00,000</asp:ListItem>
                    <asp:ListItem>70,00,000</asp:ListItem>
                    <asp:ListItem>80,00,000</asp:ListItem>
                    <asp:ListItem>90,00,000</asp:ListItem>
                    <asp:ListItem>1,00,00,000</asp:ListItem>
                    <asp:ListItem>1,25,00,000</asp:ListItem>
                    <asp:ListItem>1,50,00,000</asp:ListItem>
                    <asp:ListItem>1,75,00,000</asp:ListItem>
                    <asp:ListItem>2,00,00,000</asp:ListItem>
                    <asp:ListItem>2,50,00,000</asp:ListItem>
                    <asp:ListItem>3,00,00,000</asp:ListItem>
                    <asp:ListItem>3,50,00,000</asp:ListItem>
                    <asp:ListItem>4,00,00,000</asp:ListItem>
                    <asp:ListItem>4,50,00,000</asp:ListItem>
                    <asp:ListItem>5,00,00,000</asp:ListItem>
                    <asp:ListItem>6,00,00,000</asp:ListItem>
                    <asp:ListItem>7,00,00,000</asp:ListItem>
                    <asp:ListItem>8,00,00,000</asp:ListItem>
                    <asp:ListItem>9,00,00,000</asp:ListItem>
                    <asp:ListItem>10,00,00,000</asp:ListItem>
                    <asp:ListItem>15,00,00,000</asp:ListItem>
                    <asp:ListItem>20,00,00,000</asp:ListItem>
                    <asp:ListItem>25,00,00,000</asp:ListItem>
                    <asp:ListItem>30,00,00,000</asp:ListItem>
                    <asp:ListItem>35,00,00,000</asp:ListItem>
                    <asp:ListItem>40,00,00,000</asp:ListItem>
                    <asp:ListItem>50,00,00,000</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 426px">
                &nbsp;</td>
            <td style="height: 36px; width: 426px">
                What is the minimum investment per investor?</td>
            <td style="width: 507px; height: 36px">
                <asp:DropDownList ID="DropDownList7" runat="server" 
                    ToolTip="“These days most investors like to invest smaller amounts. What’s the smallest amount you’d be happy to receive per investor? The smaller it is, the more investors you’ll be matched with…”">
                    <asp:ListItem Selected="True">0</asp:ListItem>
                    <asp:ListItem>10,000</asp:ListItem>
                    <asp:ListItem>25,000</asp:ListItem>
                    <asp:ListItem>50,000</asp:ListItem>
                    <asp:ListItem>1,00,000</asp:ListItem>
                    <asp:ListItem>2,50,000</asp:ListItem>
                    <asp:ListItem>5,00,000</asp:ListItem>
                    <asp:ListItem>10,00,000</asp:ListItem>
                    <asp:ListItem>15,00,000</asp:ListItem>
                    <asp:ListItem>20,00,000</asp:ListItem>
                    <asp:ListItem>25,00,000</asp:ListItem>
                    <asp:ListItem>30,00,000</asp:ListItem>
                    <asp:ListItem>40,00,000</asp:ListItem>
                    <asp:ListItem>50,00,000</asp:ListItem>
                    <asp:ListItem>60,00,000</asp:ListItem>
                    <asp:ListItem>70,00,000</asp:ListItem>
                    <asp:ListItem>80,00,000</asp:ListItem>
                    <asp:ListItem>90,00,000</asp:ListItem>
                    <asp:ListItem>1,00,00,000</asp:ListItem>
                    <asp:ListItem>1,25,00,000</asp:ListItem>
                    <asp:ListItem>1,50,00,000</asp:ListItem>
                    <asp:ListItem>1,75,00,000</asp:ListItem>
                    <asp:ListItem>2,00,00,000</asp:ListItem>
                    <asp:ListItem>2,50,00,000</asp:ListItem>
                    <asp:ListItem>3,00,00,000</asp:ListItem>
                    <asp:ListItem>3,50,00,000</asp:ListItem>
                    <asp:ListItem>4,00,00,000</asp:ListItem>
                    <asp:ListItem>4,50,00,000</asp:ListItem>
                    <asp:ListItem>5,00,00,000</asp:ListItem>
                    <asp:ListItem>6,00,00,000</asp:ListItem>
                    <asp:ListItem>7,00,00,000</asp:ListItem>
                    <asp:ListItem>8,00,00,000</asp:ListItem>
                    <asp:ListItem>9,00,00,000</asp:ListItem>
                    <asp:ListItem>10,00,00,000</asp:ListItem>
                    <asp:ListItem>15,00,00,000</asp:ListItem>
                    <asp:ListItem>20,00,00,000</asp:ListItem>
                    <asp:ListItem>25,00,00,000</asp:ListItem>
                    <asp:ListItem>30,00,00,000</asp:ListItem>
                    <asp:ListItem>35,00,00,000</asp:ListItem>
                    <asp:ListItem>40,00,00,000</asp:ListItem>
                    <asp:ListItem>50,00,00,000</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 426px">
                &nbsp;</td>
            <td style="height: 36px; width: 426px">
                &nbsp;</td>
            <td style="width: 507px; height: 36px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px; width: 426px">
                &nbsp;</td>
            <td style="height: 36px; width: 426px">
                &nbsp;</td>
            <td style="width: 507px; height: 36px">
                <asp:Button ID="Button1" runat="server" Text="Save &amp; Continue" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>




</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Investor/InvestorMaster.master" AutoEventWireup="true" CodeFile="InvestorPost.aspx.cs" Inherits="InvestorPost1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table style="width: 100%">
        <tr>
            <td class="box_3" colspan="3" 
                style="height: 36px; font-weight: bold; text-decoration: underline;">
                Welcome To Flare Broadcast Network!!</td>
        </tr>
        <tr>
            <td class="box_3" colspan="3" 
                style="height: 36px; font-size: small; font-style: italic;">
                Feel Free To Post Your Requirement</td>
        </tr>
        <tr>
            <td style="height: 36px; width: 298px">
                &nbsp;</td>
            <td style="height: 36px; width: 373px">
                &nbsp;</td>
            <td style="height: 36px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px; width: 298px">
                &nbsp;</td>
            <td style="height: 36px; width: 373px">
                Intrests:</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox1" 
                    placeholder="I am Intrested to invest in Making new Theatre...." runat="server" 
                    Height="73px" Width="242px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 298px; text-align: left">
                &nbsp;</td>
            <td style="height: 36px; text-align: left; width: 373px">
                Grubstack:</td>
            <td style="height: 36px; text-align: left">Minimum :
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
            &nbsp;Maximum :
                <asp:DropDownList ID="DropDownList8" runat="server" 
                    
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
            <td style="width: 298px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 373px">
                The Industries you are intrested in.</td>
            <td style="text-align: left">
                <asp:DropDownList ID="DropDownList9" runat="server" 
                    
                    ToolTip="“Which of the options in the dropdown list best fits your business? The Category you choose will help match you with our investors, so make sure you pick the right one!”" 
                    DataSourceID="CategoryData" DataTextField="Category_title" 
                    DataValueField="Category_id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CategoryData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [Category_title], [Category_id] FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 298px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 373px">
                The Area you have intrest in those industries.</td>
            <td style="text-align: left">
                <asp:DropDownList ID="DropDownList10" runat="server" 
                    DataSourceID="SubCategoryData" DataTextField="Sub_category_title" 
                    DataValueField="Sub_category_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SubCategoryData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT * FROM [SubCategory] WHERE ([Category_id] = @Category_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList9" Name="Category_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 298px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 373px">
                Where are you based?</td>
            <td style="text-align: left">
                Country 
                : <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="CountryData" DataTextField="Country_title" 
                    DataValueField="Country_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CountryData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [Country_id], [Country_title] FROM [Country]">
                </asp:SqlDataSource>
                State : <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    DataSourceID="StateData" DataTextField="State_title" DataValueField="State_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="StateData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_title], [Country_id] FROM [State] WHERE ([Country_id] = @Country_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="Country_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                City : <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="CityData" DataTextField="City_title" DataValueField="City_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CityData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT [City_id], [State_id], [City_title] FROM [City] WHERE ([State_id] = @State_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="State_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 298px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 373px">
                What&#39;s your professional background?</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox2" 
                    placeholder="For Example....- I am owner of KQ pvt ltd. that leads top from 10 years...." 
                    runat="server" Height="73px" Width="242px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 298px">
                &nbsp;</td>
            <td style="width: 373px">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px">
                &nbsp;</td>
            <td style="width: 373px">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
    </table>


</asp:Content>


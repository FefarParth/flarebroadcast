<%@ Page Title="" Language="C#" MasterPageFile="~/IdeaPoster/IdeaMaster.master" AutoEventWireup="true" CodeFile="Ideapost1.aspx.cs" Inherits="Ideapost1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%" bgcolor="#66FF33" cssclass=".preffix_12">
        <tr>
            <td style="width: 626px">
                &nbsp;</td>
            <td style="width: 844px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 626px">
                Short Summary</td>
            <td style="width: 844px">
                <asp:TextBox ID="TextBox1" runat="server" Height="103px" Width="377px" placeholder="Write here about 'How would you explain your idea in a couple of sentences?'"
                    ToolTip="“How would you sell your idea in a couple of sentences?&quot;" 
                    MaxLength="175" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 626px">
                &nbsp;</td>
            <td style="width: 844px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 626px">
                Business Detail</td>
            <td style="width: 844px">
                <asp:TextBox ID="TextBox2" runat="server" Height="147px" Width="377px" placeholder="What does your business do? What product/service do you provide? Does it solve a problem? How does it work? How is it beneficial for its users/customers?"
                    ToolTip="“This section is for you to explain your business." 
                    MaxLength="750"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 626px">
                &nbsp;</td>
            <td style="width: 844px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 626px">
                Market Status</td>
            <td style="width: 844px">
                <asp:TextBox ID="TextBox3" runat="server" Height="103px" Width="377px" placeholder="How big is the market and the opportunity? Is the market growing? What are the trends? Who are your target customers? Who are your competitors?"
                    ToolTip="&quot;Talk about the state of the market your business is in..&quot;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 626px;">
                &nbsp;</td>
            <td style="height: 36px; width: 844px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px; width: 626px;">
                Progress/Proof</td>
            <td style="height: 36px; width: 844px;">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 626px">
                &nbsp;</td>
            <td style="width: 844px">
                <asp:Button ID="Button2" runat="server" Text="Upload" Width="83px" 
                    onclick="Button2_Click" />
                    <br />
                    <asp:Label ID="lblMessage" ForeColor="Green" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 626px">
                &nbsp;</td>
            <td style="width: 844px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 626px">
                Objective/Future</td>
            <td style="width: 844px">
                <asp:TextBox ID="TextBox5" runat="server" Height="103px" Width="377px" placeholder="Write here about....What are your short-term goals? Where do you see the business in 3-5 years’ time? What’s your go-to-market or expansion strategy?"
                    ToolTip="Show here.. What are your short-term goals? Where do you see the business in 3-5 years’ time? What’s your go-to-market or expansion strategy? "></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 626px">
                &nbsp;</td>
            <td style="width: 844px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 626px">
                &nbsp;</td>
            <td style="width: 844px">
                <asp:Button ID="Button1" runat="server" Text="Save" Width="126px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>



</asp:Content>


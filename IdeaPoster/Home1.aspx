<%@ Page Title="" Language="C#" MasterPageFile="~/IdeaPoster/IdeaMaster.master" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" bgcolor="#66FF33">
        <tr>
            <td class="box_3" colspan="5" 
                style="font-weight: bold; text-decoration: underline">
                Flare Planners &lt;--&gt; Investors</td>
        </tr>
        <tr>
            <td style="width: 290px">
                &nbsp;</td>
            <td style="width: 262px">
                &nbsp;</td>
            <td style="width: 182px">
                &nbsp;</td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 290px">
                &nbsp;</td>
            <td style="width: 262px">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Search For Investors" Height="30px" 
                    ontextchanged="TextBox1_TextChanged" Width="240px"></asp:TextBox>
            </td>
            <td style="width: 182px">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    onclick="ImageButton1_Click" Width="39px" 
                    ImageUrl="~/images/Extra/search-icon-png-0.png" />
            </td>
            <td style="width: 261px">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Search For Flare Planners" Height="30px" 
                    ontextchanged="TextBox2_TextChanged" Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" 
                    onclick="ImageButton1_Click" Width="39px" 
                    ImageUrl="~/images/Extra/search-icon-png-0.png" />
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Investor/InvestorMaster.master" AutoEventWireup="true" CodeFile="InvestorApply.aspx.cs" Inherits="Investor_InvestorApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 394px">
            &nbsp;</td>
            <td class="box_3" 
            style="width: 487px; font-size: x-large; font-weight: bold; text-decoration: underline;">
            Apply For Deal</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 394px">
            &nbsp;</td>
            <td class="box_3" 
            style="width: 487px; font-size: x-large; font-weight: bold; text-decoration: underline;">
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 394px">
                Your Reviews and Requirements&nbsp;
            </td>
            <td style="width: 487px">
                <asp:TextBox ID="TextBox1" runat="server" Height="93px" Width="498px"></asp:TextBox>
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 394px">
            &nbsp;</td>
            <td style="width: 487px">
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 394px">
            &nbsp;</td>
            <td style="width: 487px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="125px" />
            </td>
            <td>
            &nbsp;</td>
        </tr>
    </table>

</asp:Content>


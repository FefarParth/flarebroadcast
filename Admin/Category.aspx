<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 225px">
                &nbsp;</td>
            <td class="box_3" colspan="2" style="text-align: center">
                Category of Posts</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 225px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td class="box_3" style="text-align: left; width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 225px">
                &nbsp;</td>
            <td style="width: 272px">
                Insert New Category</td>
            <td class="box_3" style="text-align: left; width: 233px">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="For ex. Real Estate"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 225px">
                &nbsp;</td>
            <td style="width: 272px">
                Discription</td>
            <td class="box_3" style="text-align: left; width: 233px">
                <asp:TextBox ID="TextBox2" runat="server" Height="71px" placeholder="Rent, buy, or sell property for clients. Perform duties, such as study property listings, interview prospective clients, accompany clients to property site, discuss conditions of sale, and draw up real estate contracts. Includes agents who represent buyer"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 225px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td class="box_3" style="text-align: left; width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 225px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td class="box_3" style="text-align: left; width: 233px">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>


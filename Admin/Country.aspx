<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="Admin_Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 247px">
                &nbsp;</td>
            <td class="box_3" colspan="2">
                Country</td>
            <td class="box_3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td style="width: 21px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                &nbsp;</td>
            <td style="width: 247px">
                Add New Country</td>
            <td style="width: 21px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 21px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>


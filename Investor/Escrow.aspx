<%@ Page Title="" Language="C#" MasterPageFile="~/Investor/InvestorMaster.master" AutoEventWireup="true" CodeFile="Escrow.aspx.cs" Inherits="Investor_Escrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table style="width: 100%">
        <tr>
            <td width="100px">
                &nbsp;</td>
            <td>
                
<asp:Repeater ID="rptProducts" runat="server">
    <ItemTemplate>
    <tr style="width: 1349px">
    <td style="width: 290px">
                &nbsp;</td>
            
      <td valign="top"><img width="120px" src="Profile_pic/Anant.jpg<%--<%# DataBinder.Eval(Container.DataItem, "Profile_photo") %>--%>"  alt="<%# DataBinder.Eval(Container.DataItem, "Full_name") %>" /></td>
      <td  style=" width: 550px; font-weight: bold;" valign="top"><b class="header_2"><%# DataBinder.Eval(Container.DataItem, "Full_name") %></b>
             <br /><br />
             <p class="header_3">Title: <%# DataBinder.Eval(Container.DataItem, "Title") %></p>
             Category: <%# DataBinder.Eval(Container.DataItem, "Category_title") %><br />
             </td>
             <td><a href="IdeaPostDetail.aspx?IdeaPostId=<%# DataBinder.Eval(Container.DataItem, "Idea_post_id") %>">[View More Details]</a>
      
      </td>
      <td style="width: 262px">
                &nbsp;</td>
    </tr>
</ItemTemplate>
<SeparatorTemplate>
     <tr><td colspan="4"><hr /></td></tr>
    </SeparatorTemplate>
</asp:Repeater>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



</asp:Content>


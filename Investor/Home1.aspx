<%@ Page Title="" Language="C#" MasterPageFile="~/Investor/InvestorMaster.master" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

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
            <td style="width: 444px">
                &nbsp;</td>
            <td style="width: 718px">
                &nbsp;</td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 290px">
                &nbsp;</td>
            <td style="width: 444px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Search For Investors" Height="30px" 
                    ontextchanged="TextBox1_TextChanged" Width="240px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    onclick="ImageButton1_Click" Width="39px" 
                    ImageUrl="~/images/Extra/search-icon-png-0.png" />
            </td>
            <td style="width: 718px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Search For Flare Planners" Height="30px" 
                    ontextchanged="TextBox2_TextChanged" Width="240px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" 
                    onclick="ImageButton1_Click" Width="39px" 
                    ImageUrl="~/images/Extra/search-icon-png-0.png" />
            </td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 290px">
                &nbsp;</td>
            <td style="width: 444px">
                &nbsp;</td>
            <td style="width: 718px">
                &nbsp;</td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 290px">
                &nbsp;</td>
            <td style="width: 444px">
                &nbsp;</td>
            <td style="width: 718px">
                &nbsp;</td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 290px">
                &nbsp;</td>
            <td style="width: 444px">
                &nbsp;</td>
            <td style="width: 718px">
                &nbsp;</td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="font-weight: bold; font-size: x-large; text-decoration: underline; color: #55BBFF">
            <td style="width: 290px">
                &nbsp;</td>
            <td class="box_3" colspan="2" >
                Meet Leaders Of Future &amp; Find Innovative Ideas</td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 290px">
                &nbsp;</td>
            <td style="width: 444px">
                &nbsp;</td>
            <td style="width: 718px">
                &nbsp;</td>
            <td style="width: 261px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
    <asp:Repeater ID="rptProducts" runat="server">
    <ItemTemplate>
    <tr style="width: 1349px">
    <td style="width: 290px">
                &nbsp;</td>
            
      <td valign="top"><img width="120px" src="Profile_pic/Anant.jpg<%--<%# DataBinder.Eval(Container.DataItem, "Profile_photo") %>--%>"  alt="<%# DataBinder.Eval(Container.DataItem, "Full_name") %>" /></td>
      <td  style=" width: 667px; font-weight: bold;" valign="top"><b class="header_2"><%# DataBinder.Eval(Container.DataItem, "Full_name") %></b>
             <br /><br />
             <p class="header_3">Title: <%# DataBinder.Eval(Container.DataItem, "Title") %></p>
             Category: <%# DataBinder.Eval(Container.DataItem, "Category_title") %><br />
             <a href="IdeaPostDetail.aspx?IdeaPostId=<%# DataBinder.Eval(Container.DataItem, "Idea_post_id") %>">[View More Details]</a>
      
      </td>
      <td style="width: 262px">
                &nbsp;</td>
    </tr>
    </ItemTemplate>
    <SeparatorTemplate>
     <tr><td colspan="4"><hr /></td></tr>
    </SeparatorTemplate>
    </asp:Repeater>
</table>
    
</asp:Content>


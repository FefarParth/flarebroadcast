<%@ Page Title="" Language="C#" MasterPageFile="~/FlareMaster.master" AutoEventWireup="true" CodeFile="Dispute.aspx.cs" Inherits="Dispute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td class="box_3" style="width: 224px">
                Dispute</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                Idea</td>
            <td style="width: 224px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="IdeaPostData" DataTextField="Title" DataValueField="Idea_post_id" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="IdeaPostData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Flare BroadcastConnectionString %>" 
                    SelectCommand="SELECT * FROM [IdeaPost]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                Title</td>
            <td style="width: 224px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                Summary</td>
            <td style="width: 224px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                Amount</td>
            <td style="width: 224px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                Reason</td>
            <td style="width: 224px">
                <asp:TextBox ID="TextBox1" runat="server" Height="76px" Width="273px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="102px" 
                    onclick="Button1_Click" PostBackUrl="~/Dispute.aspx" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>




<asp:Repeater ID="rptmsg" runat="server">
    <ItemTemplate>
<%--    <tr style="width: 1349px">
    <td style="width: 290px">
                &nbsp;</td>
            
      <td valign="top"><img width="120px" src="Profile_pic/Anant.jpg"  alt="<%# DataBinder.Eval(Container.DataItem, "Full_name") %>" /></td>
      <td  style=" width: 667px; font-weight: bold;" valign="top"><b class="header_2"><%# DataBinder.Eval(Container.DataItem, "Full_name") %></b>
             <br /><br />
             <p class="header_3">Title: <%# DataBinder.Eval(Container.DataItem, "Title") %></p>
             Category: <%# DataBinder.Eval(Container.DataItem, "Category_title") %><br />
             <a href="IdeaPostDetail.aspx?IdeaPostId=<%# DataBinder.Eval(Container.DataItem, "Idea_post_id") %>">[View More Details]</a>
      
      </td>
      <td style="width: 262px">
                &nbsp;</td>
    </tr>--%>

    <%# DataBinder.Eval(Container.DataItem, "Full_name") %> : <%# DataBinder.Eval(Container.DataItem, "Message") %>


    </ItemTemplate>
 
    </asp:Repeater>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 224px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


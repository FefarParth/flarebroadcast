<%@ Page Title="" Language="C#" MasterPageFile="~/FlareMaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
        <asp:Table ID="Table1" runat="server" 
    BackImageUrl="~/images/Extra/background.png" Height="394px" Width="1349px">
        
        <asp:TableRow>
            <asp:TableCell style="width: 182px">
                
            </asp:TableCell>
            <asp:TableCell style="font-weight: bold; font-size: xx-large; width: 434px; color: #129894;"><strong>Search For Flare Broadcast</strong></asp:TableCell>
            <asp:TableCell style="width: 44px">
                &nbsp;</asp:TableCell>
                <asp:TableCell></asp:TableCell>
            <asp:TableCell style="width: 11px" rowspan="7">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="329px" 
                    ImageUrl="~/images/Extra/vertical-line.png" 
                    Width="43px" />
            </asp:TableCell>
            <asp:TableCell style="width: 50px" rowspan="7"></asp:TableCell>
            <asp:TableCell style="font-weight: bold; font-size: xx-large; color: #129894;">
                Register Your Account</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 182px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 434px">
                `</asp:TableCell>
            <asp:TableCell style="width: 44px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="font-weight: bold">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 182px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 434px">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Search For Investors" Height="30px" 
                    ontextchanged="TextBox1_TextChanged" Width="405px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell style="width: 44px">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    onclick="ImageButton1_Click" Width="39px" 
                    ImageUrl="~/images/Extra/search-icon-png-0.png" />
            </asp:TableCell>
            <asp:TableCell></asp:TableCell>
            <asp:TableCell rowspan="2">
                <asp:Button ID="Button1" runat="server" Height="62px" CssClass="Button1"
                    Text="New Here...  Sign Up" Width="214px" PostBackUrl="~/SignUp.aspx" 
                    onclick="Button1_Click" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 182px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 434px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 44px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 182px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 434px">
                <asp:TextBox ID="TextBox2" runat="server" 
                    placeholder="Search For Flare Planners" Height="30px" 
                    ontextchanged="TextBox2_TextChanged" Width="405px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell style="width: 44px">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" Width="39px" 
                    ImageUrl="~/images/Extra/search-icon-png-0.png" onclick="ImageButton2_Click" />
            </asp:TableCell>
            <asp:TableCell></asp:TableCell>
            <asp:TableCell rowspan="2">
                <asp:Button ID="Button2" runat="server" Height="62px" onclick="Button2_Click" CssClass="Button1"
                    PostBackUrl="~/Login.aspx" Text="Log In" Width="214px" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 182px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 434px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 44px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 182px; height: 36px;">
                </asp:TableCell>
            <asp:TableCell style="width: 434px; height: 36px;">
                </asp:TableCell>
            <asp:TableCell style="width: 44px; height: 36px;">
                </asp:TableCell>
            <asp:TableCell style="height: 36px">
                </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell colspan="5">
                &nbsp;
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>


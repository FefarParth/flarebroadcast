<%@ Page Title="" Language="C#" MasterPageFile="~/FlareMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Table ID="Table1" runat="server" 
    BackImageUrl="~/images/Extra/background.png" Width="1349px">
        <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell colspan="3">
                <asp:Panel ID="Panel1" runat="server" BorderWidth="2px">
                    <div class="box_3">
                        <strong style="font-size: x-large; font-weight: bold; text-decoration: underline">
                        Log In</strong></div>
                </asp:Panel></asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell align="top" style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell align="top" style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell align="top" style="width: 138px">
                 <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Email Id</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 500px;">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Email id" 
                    Height="30px" Width="160px" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter Valid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Mandatory Field" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell style="clip: rect(auto, auto, auto, auto); top: 500px;">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 350px" valign="top">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px" valign="top">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px" valign="top">
                 <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Password</span></p>
                </asp:TableCell>
            <asp:TableCell valign="top" style="width: 500px">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Password" 
                    TextMode="Password" Height="30px" Width="160px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell valign="top">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter Password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                <asp:Button ID="Button1" runat="server" Text="Log In" CssClass="Button1" onclick="Button1_Click" 
                    Height="30px" Width="120px" />
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/SignUp.aspx" CausesValidation="False"> 
                    <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>New Here....?? Sign Up ..</span></p>
                    </asp:LinkButton>
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell style="width: 350px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 92px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 138px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 500px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
    </asp:Table>


</asp:Content>


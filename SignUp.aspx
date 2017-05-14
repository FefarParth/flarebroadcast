<%@ Page Title="" Language="C#" MasterPageFile="~/FlareMaster.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Table ID="Table1" runat="server"  bgcolor="#66FF33" Width="1349px">
        <asp:TableRow>
            <asp:TableCell class="box_3" colspan="5">
                <strong style="font-size: x-large; font-weight: bold; text-decoration: underline">Register Your Account</strong></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 275px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 253px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell class="box_3" style="text-align: left; width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell class="box_3" style="text-align: left; width: 275px">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>First Name</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 253px">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your First Name" 
                    Width="220px" Height="30px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Mandatory"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell class="box_3" style="text-align: left; width: 165px; height: 72px;">
                </asp:TableCell>
            <asp:TableCell class="box_3" style="text-align: left; width: 275px; height: 72px;">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Last Name</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 253px; height: 72px;">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Last Name" 
                    Width="220px" Height="30px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Mandatory"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 66px" rowspan="3">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Extra/OR.png" 
                    Width="70px" />
            </asp:TableCell>
            <asp:TableCell style="width: 418px; height: 72px;">
                &nbsp;<asp:Image ID="Image1" runat="server" Height="43px" 
                    ImageUrl="~/images/Extra/fb-logo-signup.png" Width="281px" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell class="box_3" style="text-align: left; width: 165px; height: 72px;">
                </asp:TableCell>
            <asp:TableCell class="box_3" style="text-align: left; width: 275px; height: 72px;">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Email Id</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 253px; height: 72px;">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Email id" 
                    ValidationGroup="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Width="220px" 
                    Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Mandatory"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Valid Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 418px; height: 72px;">
                <asp:Image ID="Image2" runat="server" Height="50px" 
                    ImageUrl="~/images/Extra/signup-google.png" Width="290px" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell class="box_3" style="text-align: left; width: 165px; height: 72px;">
                </asp:TableCell>
            <asp:TableCell class="box_3" style="text-align: left; width: 275px; height: 72px;">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>New Password</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 253px; height: 72px;">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Password" 
                    Width="220px" TextMode="Password" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Mandatory"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 418px; height: 72px;">
                <asp:Image ID="Image3" runat="server" Height="58px" 
                    ImageUrl="~/images/Extra/signup-linkedin.png" Width="294px" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell class="box_3" style="text-align: left; width: 165px; height: 72px;">
                </asp:TableCell>
            <asp:TableCell class="box_3" style="text-align: left; width: 275px; height: 72px;">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275); width: 275px;">
                    <span>Re-Enter Password</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 253px; height: 72px;">
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Re-Enter Your Password" 
                    Width="220px" TextMode="Password" Height="30px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Mandatory"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                    ErrorMessage="Password not match"></asp:CompareValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px; height: 72px;">
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell class="box_3" style="text-align: left; width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell class="box_3" style="text-align: left; width: 275px">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Contact No</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 253px">
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Your Contact no" 
                    MaxLength="10" Width="220px" Height="30px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Mandatory"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter valid number" 
                    ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 275px">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>User Type</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 253px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                    <asp:ListItem>Investor</asp:ListItem>
                    <asp:ListItem>Flare Planner</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 275px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 253px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 275px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 253px">
                <asp:Button ID="Button1" runat="server" Text="Sign Up" 
                    onclick="Button1_Click" ForeColor="#A800A8" 
                    Height="44px" Width="152px" CssClass="Button1" />
            </asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 275px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 253px">
                Already Registered ...??
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx" 
                    CausesValidation="False">
                    <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>..Log In Here..</span></p>
                    </asp:LinkButton>
            </asp:TableCell>
            <asp:TableCell style="width: 66px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 418px">
                &nbsp;</asp:TableCell>
        </asp:TableRow>
    </asp:Table>



</asp:Content>


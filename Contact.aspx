<%@ Page Title="" Language="C#" MasterPageFile="~/FlareMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Table ID="Table1" runat="server" 
    BackImageUrl="~/images/Extra/background.png" Width="1349px">
        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
           <%-- <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 130px; font-weight: bold; text-decoration: underline;">
                <strong style="font-size: x-large; font-weight: bold; text-decoration: underline">
                Contact Us</strong></asp:TableCell>--%>

              <asp:TableCell colspan="5">
                <asp:Panel ID="Panel1" runat="server" BorderWidth="2px">
                    <div class="box_3">
                        <strong style="border-color: #000000; font-size: x-large; font-weight: bold; text-decoration: underline">
                        Contact Us</strong></div>
                </asp:Panel>
            </asp:TableCell>

            
            <asp:TableCell style="width: 82px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 130px">
              
            </asp:TableCell>
            <asp:TableCell style="width: 216px">
              
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 82px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 130px">
               
            </asp:TableCell>
            <asp:TableCell style="width: 216px">
               
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 82px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 165px">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Name</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 130px">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Name" 
                    Height="30px" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Mandatory Field"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 216px">
                &nbsp;</asp:TableCell>
            <asp:TableCell rowspan="5" style="width: 82px">
                <asp:Image ID="Image1" runat="server" Height="401px" 
                    ImageUrl="~/images/Extra/vertical-line.png" Width="75px" />
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 94px; height: 38px;">
                </asp:TableCell>
            <asp:TableCell style="width: 165px; height: 38px;">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Email Id</span></p>
                </asp:TableCell>
            <asp:TableCell style="width: 130px; height: 38px;">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Email id" 
                    Height="30px" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Mandatory Field"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 216px; height: 38px;">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Valid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </asp:TableCell>
            <asp:TableCell style="height: 38px">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Tel: 123-456-7890</span></p>
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>info@flarebroadcast.com</span></p>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 94px; height: 38px;">
                </asp:TableCell>
            <asp:TableCell style="width: 165px; height: 38px;">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Contact Number</span></p>
                </asp:TableCell>
            <asp:TableCell style="width: 130px; height: 38px;">
                <asp:TextBox ID="TextBox3" runat="server" 
                    placeholder="Enter Your Contact number" MaxLength="10" Height="30px" 
                    Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Mandatory Field"></asp:RequiredFieldValidator>
                </asp:TableCell>
            <asp:TableCell style="width: 216px; height: 38px;">
                <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Request a CallBack</span></p>
                    
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Valid Phone Number" 
                    ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            </asp:TableCell>
            <asp:TableCell style="height: 38px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Extra/u498.png" 
                    Width="300px" />
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>KQ Group</span></p>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 165px">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Reason</span></p>
                </asp:TableCell>
            <asp:TableCell style="width: 130px">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Reason" 
                    Height="30px" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Mandatory Field"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell style="width: 216px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>1008 Francisco Street,</span></p>
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>India</span></p>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 165px">
                <p style="margin: 0px; text-rendering: optimizeLegibility; font-feature-settings: 'kern' 1; font-kerning: normal; color: rgba(0, 102, 255, 0.968627); font-family: &quot;Arial Bold&quot;, Arial; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.686275);">
                    <span>Message</span></p>
                    </asp:TableCell>
            <asp:TableCell style="width: 130px">
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Your Message" 
                    Height="80px" Width="260px"></asp:TextBox>
                &nbsp;<br />
            </asp:TableCell>
            <asp:TableCell style="width: 216px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Minimum 60 characters required" 
                    ValidationExpression="^[\s\S]{60,}$"></asp:RegularExpressionValidator>
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Extra/u498.png" 
                    Width="300px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" Height="60px" 
                    ImageUrl="~/images/Extra/u504.png" Width="70px" />
&nbsp;&nbsp;
                <asp:Image ID="Image5" runat="server" Height="58px" 
                    ImageUrl="~/images/Extra/u506.png" Width="57px" />
&nbsp;&nbsp;
                <asp:Image ID="Image6" runat="server" Height="58px" 
                    ImageUrl="~/images/Extra/u508.png" Width="56px" />
                <asp:Image ID="Image7" runat="server" Height="68px" 
                    ImageUrl="~/images/Extra/u510.png" Width="86px" />
            </asp:TableCell>
        </asp:TableRow>
<%--        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 130px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 216px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 82px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>--%>
        <asp:TableRow>
            <asp:TableCell style="width: 94px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 165px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 130px">
                <asp:Button ID="Button" runat="server" Text="Submit"  CssClass="Button1"
                    onclick="Button1_Click" Height="30px" Width="154px" />
            </asp:TableCell>
            <asp:TableCell style="width: 216px">
                &nbsp;</asp:TableCell>
            <asp:TableCell style="width: 82px">
                &nbsp;</asp:TableCell>
            <asp:TableCell>
                &nbsp;</asp:TableCell>
        </asp:TableRow>
    </asp:Table>


</asp:Content>


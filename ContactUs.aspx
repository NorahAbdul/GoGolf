<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
    .auto-style11 {
        color: #009933;
    }
</style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
    <span class="auto-style7" style="display: inline !important; float: none; background-color: transparent; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 23.33px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;"><strong>Use this page if you have a question, </strong></span><strong><span class="auto-style7">we will reply back as soon as possible. :)</span></strong></p>
<br />
<span class="text-primary"><strong>Name: </strong></span><strong>
<asp:TextBox ID="TextBox1" runat="server" CssClass="text-primary"></asp:TextBox>
<br class="text-primary" />
</strong><span class="text-primary"><strong>Message: </strong></span><strong>
<br class="text-primary" />
</strong>&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
<br />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
<asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Message Sent!"></asp:Label>
</asp:Content>


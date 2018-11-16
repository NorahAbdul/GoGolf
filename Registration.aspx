<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 140px;
            position: absolute;
            top: 223px;
            left: 10px;
            z-index: 1;
        }
        .auto-style5 {
            width: 137px;
        }
        .auto-style6 {
            text-decoration: underline;
        }
    .auto-style7 {
        height: 25px;
    }
    .auto-style8 {
        height: 31px;
    }
    .auto-style9 {
        width: 5px;
        color: #000000;
    }
    .auto-style11 {
        width: 66px;
        color: #00CC66;
        text-align: left;
            height: 23px;
        }
    .auto-style12 {
        width: 66px;
        color: #000000;
        height: 61px;
    }
    .auto-style13 {
        width: 48%;
            height: 138px;
            margin-top: 0px;
        }
    .auto-style14 {
            height: 7px;
            text-align: left;
            width: 478px;
        }
    .auto-style17 {
        height: 24px;
            width: 100px;
        }
    .auto-style18 {
        width: 66px;
        color: #000000;
        height: 24px;
    }
    .auto-style19 {
        width: 66px;
        color: #000000;
        height: 28px;
    }
    .auto-style20 {
        height: 28px;
            width: 100px;
        }
        .auto-style21 {
            text-decoration: underline;
            color: #FFFFFF;
            width: 106px;
            height: 18px;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style23 {
            background-color: #006600;
        }
        .auto-style26 {
            height: 20px;
            width: 478px;
        }
        .auto-style27 {
        height: 187px;
    }
        .auto-style33 {
            width: 94%;
            }
        .auto-style34 {
            height: 23px;
            width: 100px;
        }
        .auto-style35 {
            width: 100px;
        height: 61px;
    }
        .auto-style38 {
            height: 7px;
            width: 478px;
        }
        .auto-style39 {
            position: absolute;
            top: 348px;
            left: 461px;
        }
        .auto-style40 {
            height: 187px;
            width: 413px;
        }
        .auto-style41 {
            height: 187px;
            width: 90px;
        }
        .auto-style42 {
            width: 478px;
            color: #00CC99;
            height: 19px;
        }
        .auto-style44 {
            height: 31px;
            width: 478px;
            color: #00CC99;
        }
        .auto-style45 {
            height: 20px;
            width: 106px;
        }
        .auto-style46 {
            height: 7px;
            width: 106px;
        }
        .auto-style47 {
            height: 7px;
            text-align: left;
            width: 106px;
        }
        .auto-style48 {
            width: 106px;
            color: #00CC99;
            height: 19px;
        }
        .auto-style49 {
            height: 31px;
            width: 106px;
            color: #00CC99;
        }
        .auto-style50 {
            height: 18px;
            width: 478px;
        }
    .auto-style51 {
        height: 187px;
        width: 49px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <table class="auto-style4">
        <tr>
            <td class="auto-style41">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style40">
                <table class="auto-style33" style="height: 172px">
                    <tr>
                        <td class="auto-style11"><span class="auto-style6"><strong><span class="auto-style23">Login</span></strong></span> </td>
                        <td class="auto-style34">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">User name</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="Text2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">Password</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19"></td>
                        <td class="auto-style20">
                            <asp:Button ID="Button1" runat="server" Text="Sign in " OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"></td>
                        <td class="auto-style35">
                            <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="Incorrect user Name or password"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style51"></td>
            <td class="auto-style27">
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style21"><strong><span class="auto-style23">Sign up </span> </strong></td>
                        <td class="auto-style50">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style45">User Name</td>
                        <td class="auto-style26">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="auto-style39" style="z-index: 1">
                        <td class="auto-style46">Password</td>
                        <td class="auto-style38">
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style47">Email</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style48"></td>
                        <td class="auto-style42">
                            <asp:Button ID="Button2" runat="server" Text="Sign up" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style49"></td>
                        <td class="auto-style44">
                            <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="User Registred"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
    </table>
   

</asp:Content>


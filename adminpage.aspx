<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminpage.aspx.cs" Inherits="adminpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style9 {
            width: 266px;
        }
        .auto-style10 {
            width: 266px;
            height: 30px;
        }
        .auto-style11 {
            height: 30px;
        }
        .auto-style12 {
            height: 30px;
            width: 70px;
        }
        .auto-style13 {
            width: 70px;
        }
        .auto-style14 {
            width: 266px;
            height: 26px;
        }
        .auto-style15 {
            width: 70px;
            height: 26px;
        }
        .auto-style16 {
            height: 26px;
            text-decoration: underline;
        }
        .auto-style17 {
            height: 30px;
            text-decoration: underline;
        }
        .auto-style18 {
            width: 266px;
            height: 38px;
        }
        .auto-style19 {
            width: 70px;
            height: 38px;
        }
        .auto-style20 {
            height: 38px;
        }
        .auto-style21 {
            width: 266px;
            height: 11px;
        }
        .auto-style22 {
            width: 70px;
            height: 11px;
        }
        .auto-style23 {
            height: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table class="auto-style4">
        <tr>
            <td>
                <h3><strong style="text-decoration: underline; font-size: larger">Control Panel </strong></h3>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7"><strong><em>Add Cart</em></strong></td>
            <td class="auto-style7"><strong><em>Update Cart</em></strong></td>
            <td class="auto-style7"><strong><em>Delete</em></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style6"><span class="auto-style5">Cart Capacity </span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" Width="233px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GogolfConnectionString %>" DeleteCommand="DELETE FROM [golfCar] WHERE [Id] = @Id" InsertCommand="INSERT INTO [golfCar] ([Capacity], [CurrentPass]) VALUES (@Capacity, @CurrentPass)" SelectCommand="SELECT * FROM [golfCar]" UpdateCommand="UPDATE [golfCar] SET [Capacity] = @Capacity, [CurrentPass] = @CurrentPass WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="CurrentPass" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="CurrentPass" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" Width="233px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" />
            </td>
            <td class="auto-style8"><span class="auto-style5">Cart Capacity </span>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style5" ></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
                <asp:Label ID="Label2" runat="server" ForeColor="#993300" Text="Cart has been deleted"></asp:Label>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" ForeColor="#66FF33" Text="Cart has been added.."></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                <asp:Label ID="Label1" runat="server" ForeColor="#66FF33" Text="Cart has been updated.."></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <table class="auto-style4">
        <tr>
            <td class="auto-style10"><strong style="text-decoration: underline; font-size: larger">Current View Table </strong></td>
            <td class="auto-style12"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="text-align: left" Width="841px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table class="auto-style4">
        <tr>
            <td class="auto-style10"><strong style="text-decoration: underline; font-size: larger">Manage Admin Access</strong></td>
            <td class="auto-style12"></td>
            <td class="auto-style17"><strong><em>Current View </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="text-align: left" Width="841px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" ReadOnly="True" />
                        <asp:CheckBoxField DataField="isAdmin" HeaderText="isAdmin" SortExpression="isAdmin" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GogolfConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([username], [password], [email], [isAdmin]) VALUES (@username, @password, @email, @isAdmin)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [username] = @username, [password] = @password, [email] = @email, [isAdmin] = @isAdmin WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="isAdmin" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="isAdmin" Type="Boolean" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"><strong><em>Assign Admin Priviliages</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19"></td>
            <td class="auto-style20">Choose Admin:
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="username" DataValueField="id" Width="233px">
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Give Admin Rights" />
                <asp:Label ID="Label4" runat="server" ForeColor="#66FF33" Text="Admin Rights has been added Successfully "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"><strong><em>Remove Admin Priviliages</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>Choose Admin:
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="username" DataValueField="id" Width="233px">
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Remove Admin Rights" />
                <asp:Label ID="Label5" runat="server" ForeColor="#66FF33" Text="Admin Rights has been Removed Successfully "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
    <br />
    <br />
    <table class="auto-style4">
        <tr>
            <td class="auto-style10"><strong style="text-decoration: underline; font-size: larger">Manage Driver Access</strong></td>
            <td class="auto-style12"></td>
            <td class="auto-style17"><strong><em>Current View </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" style="text-align: left" Width="841px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" ReadOnly="True" />
                        <asp:CheckBoxField DataField="isDriver" HeaderText="isDriver" SortExpression="isDriver" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GogolfConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [username] = @username" InsertCommand="INSERT INTO [users] ([username], [isDriver]) VALUES (@username, @isDriver)" SelectCommand="SELECT [id], [username], [isDriver] FROM [users]" UpdateCommand="UPDATE [users] SET [id] = @id, [isDriver] = @isDriver WHERE [username] = @username">
                    <DeleteParameters>
                        <asp:Parameter Name="username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="isDriver" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="isDriver" Type="Boolean" />
                        <asp:Parameter Name="username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"><strong><em>Assign Driver Priviliages</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19"></td>
            <td class="auto-style20">Choose Admin:
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="username" DataValueField="id" Width="233px">
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Give Driver Rights" />
                <asp:Label ID="Label6" runat="server" ForeColor="#66FF33" Text="Driver Rights has been added Successfully "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"><strong><em>Remove Driver Priviliages</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>Choose Admin:
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource3" DataTextField="username" DataValueField="id" Width="233px">
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Remove driver Rights" />
                <asp:Label ID="Label7" runat="server" ForeColor="#66FF33" Text="Driver Rights has been Removed Successfully "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>


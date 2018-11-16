<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mainpage.aspx.cs" Inherits="Mainpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-decoration: underline;
            width: 328px;
        }
        .auto-style6 {
            width: 328px;
        }
        .auto-style7 {
            width: 328px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 964px;
        }
        .auto-style10 {
            height: 26px;
            width: 964px;
        }
        .auto-style11 {
            text-decoration: underline;
        }
    .auto-style12 {
        color: #009933;
    }
    .auto-style13 {
        text-decoration: underline;
        width: 610px;
        color: #009933;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        <strong>Welcome Back&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="#66FF33" Text="Label" CssClass="auto-style12"></asp:Label>
&nbsp;we have missed you :)</strong></h2>
<p>
        To Acceess the Admin menu click on the button
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Admin" />
</p>
<p>
        To Acceess the Driver menu click on the button
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Driver" />
</p>
<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Sorry you are not an admin "></asp:Label>
    <br />
<asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Sorry you are not a Driver"></asp:Label>
    <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GogolfConnectionString %>" DeleteCommand="DELETE FROM [golfCar] WHERE [Id] = @Id" InsertCommand="INSERT INTO [golfCar] ([Capacity], [Booked], [Requested]) VALUES (@Capacity, @Booked, @Requested)" SelectCommand="SELECT [Capacity], [Id], [Booked], [Requested] FROM [golfCar] ORDER BY [Booked], [Id], [Capacity]" UpdateCommand="UPDATE [golfCar] SET [Capacity] = @Capacity, [Booked] = @Booked, [Requested] = @Requested WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="Booked" Type="Boolean" />
                        <asp:Parameter Name="Requested" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="Booked" Type="Boolean" />
                        <asp:Parameter Name="Requested" Type="Boolean" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GogolfConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [order number] = @original_order_number AND [Requester] = @original_Requester AND (([Driver] = @original_Driver) OR ([Driver] IS NULL AND @original_Driver IS NULL))" InsertCommand="INSERT INTO [Orders] ([Requester], [Driver]) VALUES (@Requester, @Driver)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Requester] = @Requester, [Driver] = @Driver WHERE [order number] = @original_order_number AND [Requester] = @original_Requester AND (([Driver] = @original_Driver) OR ([Driver] IS NULL AND @original_Driver IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_order_number" Type="Int32" />
                    <asp:Parameter Name="original_Requester" Type="String" />
                    <asp:Parameter Name="original_Driver" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Requester" Type="String" />
                    <asp:Parameter Name="Driver" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Requester" Type="String" />
                    <asp:Parameter Name="Driver" Type="String" />
                    <asp:Parameter Name="original_order_number" Type="Int32" />
                    <asp:Parameter Name="original_Requester" Type="String" />
                    <asp:Parameter Name="original_Driver" Type="String" />
                </UpdateParameters>
</asp:SqlDataSource>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style13"><em><strong>Book a Golf Cart</strong></em></td>
                    <td class="auto-style9"><span class="auto-style11"><strong>Current view</strong></span> </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="307px" Height="223px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="CartNumber " SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                                <asp:CheckBoxField DataField="Requested" HeaderText="Requested" SortExpression="Requested" />
                                <asp:CheckBoxField DataField="Booked" HeaderText="Booked" SortExpression="Booked" />
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
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Choose a Cart:</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book" />
<asp:Label ID="Label4" runat="server" ForeColor="#33CC33" Text="Cart has been Requested, you will get an email when your driver is assigned" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
    </table>
<p>
        &nbsp;</p>
</asp:Content>


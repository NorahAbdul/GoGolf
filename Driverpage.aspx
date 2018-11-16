<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Driverpage.aspx.cs" Inherits="Driverpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 166px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td>Order List </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style6">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="order number" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="text-align: left" Width="789px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="order number" HeaderText="order number" InsertVisible="False" ReadOnly="True" SortExpression="order number" />
                    <asp:BoundField DataField="Requester" HeaderText="Requester" SortExpression="Requester" />
                    <asp:BoundField DataField="Driver" HeaderText="Driver" SortExpression="Driver" />
                    <asp:BoundField DataField="CartNumber" HeaderText="CartNumber" SortExpression="CartNumber" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GogolfConnectionString %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GogolfConnectionString %>" DeleteCommand="DELETE FROM [golfCar] WHERE [Id] = @Id" InsertCommand="INSERT INTO [golfCar] ([Capacity], [CurrentPass], [Booked], [Requested]) VALUES (@Capacity, @CurrentPass, @Booked, @Requested)" SelectCommand="SELECT * FROM [golfCar]" UpdateCommand="UPDATE [golfCar] SET [Capacity] = @Capacity, [CurrentPass] = @CurrentPass, [Booked] = @Booked, [Requested] = @Requested WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="CurrentPass" Type="Int32" />
                        <asp:Parameter Name="Booked" Type="Boolean" />
                        <asp:Parameter Name="Requested" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="CurrentPass" Type="Int32" />
                        <asp:Parameter Name="Booked" Type="Boolean" />
                        <asp:Parameter Name="Requested" Type="Boolean" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Accept Trip Order" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


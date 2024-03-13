<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Reports.aspx.cs" Inherits="web_musaoglu.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="font-size: x-large; font-family: 'Cascadia Mono SemiBold';" class="text-center" colspan="2"><strong>PMTP Raporları</strong></td>
        </tr>
        <tr>
            <td style="width: 544px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 544px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 544px; height: 26px">
                <asp:Button ID="Button" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_DepartmentsByEmployee.aspx" Text="Bölüme Göre Personel Listesi" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Mono SemiBold" Width="370px" />
            </td>
            <td class="text-center" style="height: 26px">
                <asp:Button ID="Button0" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_EmployeeComList.aspx" Text="Personel İletişim Raporu" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Mono SemiBold" Width="370px" />
            </td>
        </tr>
        <tr>
            <td style="width: 544px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 544px">
                <asp:Button ID="Button2" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_WageGraph.aspx" Text="Personele Göre Yıllık Maaş Grafiği" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Mono SemiBold" Width="420px" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Personele Göre Maaş Listesi" OnClientClick="target='_blank'" PostBackUrl="~/rpt_WagesByEmployee.aspx" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Code SemiBold" Width="370px" />
            </td>
        </tr>
        <tr>
            <td style="width: 544px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 544px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 544px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 544px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Forms.aspx.cs" Inherits="web_musaoglu.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="2" style="height: 20px; font-size: x-large; font-family: 'Cascadia Mono SemiBold';"><strong>PMTP Formları</strong></td>
        </tr>
        <tr>
            <td class="text-center" colspan="2" style="height: 20px; font-size: x-large; font-family: 'Cascadia Mono SemiBold';">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="height: 20px; width: 587px">
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/frm_EmployeeDataEntry.aspx" Text="Personel Veri Giriş Formu" Width="370px" OnClientClick="target='_blank'" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Code SemiBold" style="font-size: medium" />
            </td>
            <td class="text-center" style="height: 20px">
                <asp:Button ID="Button3" runat="server" Text="Maaş Veri Giriş Formu" Width="370px" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageDataEntry.aspx" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Code SemiBold" style="font-size: medium" />
            </td>
        </tr>
        <tr>
            <td style="width: 587px; height: 20px;" class="text-center"></td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 587px" class="text-center">
                <asp:Button ID="Button7" runat="server" Text="Bölüm Veri Giriş ve Güncelleme Formu " Width="600px" OnClientClick="target='_blank'" PostBackUrl="~/frm_DepartmentDataEntryUpdate.aspx" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Mono SemiBold" style="font-size: medium"/>
            </td>
            <td class="text-center">
                <asp:Button ID="Button5" runat="server" Text="Maaş Veri Güncelleme Formu" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageDataUpdate.aspx" Width="370px" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" Font-Names="Cascadia Code SemiBold" Font-Size="16pt" style="font-size: medium" />
            </td>
        </tr>
        <tr>
            <td style="width: 587px" class="text-center">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px;" class="text-center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 587px" class="text-center">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 587px" class="text-center">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 587px" class="text-center">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

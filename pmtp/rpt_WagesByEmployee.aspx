<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_WagesByEmployee.aspx.cs" Inherits="web_musaoglu.rpt_WagesByEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
            font-family: "Cascadia Mono SemiBold";
            color: #000066;
        }
        .auto-style3 {
            width: 717px;
        }
        .auto-style4 {
            width: 717px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            font-family: "Cascadia Mono SemiBold";
            color: #000066;
            font-size: x-large;
        }
        .auto-style9 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style10 {
            width: 717px;
            text-align: center;
        }
        .auto-style11 {
            font-size: large;
            color: #006600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3"><strong>Personele Göre Maaşlar Raporu</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong><span class="auto-style8">Personel Seçiniz:</span><span class="auto-style7">&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" CssClass="auto-style7">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="WageID" DataSourceID="SqlDataSource2" Width="1004px" CssClass="auto-style9" ForeColor="#003300" Height="288px">
                        <Columns>
                            <asp:BoundField DataField="WageID" HeaderText="WageID" InsertVisible="False" ReadOnly="True" SortExpression="WageID" />
                            <asp:BoundField DataField="Wage_Date" HeaderText="Maaş Tarihi" SortExpression="Wage_Date" />
                            <asp:BoundField DataField="Wage_Amount" HeaderText="Maaş Tutarı" SortExpression="Wage_Amount" />
                            <asp:BoundField DataField="Wage_Commission" HeaderText="Komisyon" SortExpression="Wage_Commission" />
                            <asp:BoundField DataField="Wage_Total" HeaderText="Maaş Toplamı" ReadOnly="True" SortExpression="Wage_Total" />
                            <asp:BoundField DataField="Wage_Year" HeaderText="Yıl" ReadOnly="True" SortExpression="Wage_Year" />
                            <asp:BoundField DataField="Month" HeaderText="Ay" SortExpression="Month" />
                        </Columns>
                        <FooterStyle BackColor="#CCFF99" />
                        <HeaderStyle BackColor="#CCFF99" ForeColor="#003300" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_EmployeeWages.WageID, tbl_EmployeeWages.Wage_Date, tbl_EmployeeWages.Wage_Amount, tbl_EmployeeWages.Wage_Commission, tbl_EmployeeWages.Wage_Total, tbl_EmployeeWages.Wage_Year, tbl_Lookups.Month FROM tbl_EmployeeWages INNER JOIN tbl_Lookups ON tbl_EmployeeWages.Month_ID = tbl_Lookups.LK_ID WHERE (tbl_EmployeeWages.Empl_ID = @Empl_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style6">
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" BackColor="White" BorderColor="#CCFF99" BorderStyle="Outset" CssClass="auto-style11" Font-Names="Cascadia Code SemiBold" Height="34px" Width="204px" />
        </div>
    </form>
</body>
</html>

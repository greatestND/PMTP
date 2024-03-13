<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_WageGraph.aspx.cs" Inherits="web_musaoglu.rpt_WageGraph" %><%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
            font-size: x-large;
            text-align: center;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style3 {
            height: 336px;
            text-align: center;
        }
        .auto-style4 {
            width: 744px;
        }
        .auto-style5 {
            height: 336px;
            width: 744px;
            text-align: center;
        }
        .auto-style6 {
            width: 744px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: large;
            color: #000066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Maaş Toplam Grafiği</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" OnLoad="Chart1_Load" Height="500px" Width="500px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="Empl_Name" YValueMembers="Wtotal" YValuesPerPoint="6">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td class="auto-style3">
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Height="500px" Palette="SemiTransparent" Width="427px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="Wage_Year" YValueMembers="Wtotal" ChartType="SplineArea">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" BackColor="White" BorderColor="#CC0000" BorderStyle="Outset" CssClass="auto-style8" Font-Names="Cascadia Mono SemiBold" Height="35px" Width="206px" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_Employees.Empl_Name, SUM(tbl_EmployeeWages.Wage_Total) AS Wtotal, tbl_EmployeeWages.Wage_Year FROM tbl_EmployeeWages INNER JOIN tbl_Employees ON tbl_EmployeeWages.Empl_ID = tbl_Employees.Empl_ID GROUP BY tbl_Employees.Empl_Name, tbl_EmployeeWages.Wage_Year"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

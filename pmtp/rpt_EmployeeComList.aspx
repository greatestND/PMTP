<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_EmployeeComList.aspx.cs" Inherits="web_musaoglu.rpt_EmployeeComList1" %>

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
            height: 13px;
        }
        .auto-style3 {
            height: 13px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style6 {
            text-align: center;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
        }
        .auto-style8 {
            font-size: medium;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>Personel İletişim Raporu</strong></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1" BorderColor="#A6D2FF" BorderStyle="Solid" CssClass="auto-style5" ForeColor="#000066" Height="489px" Width="1009px">
                            <Columns>
                                <asp:BoundField DataField="Empl_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Empl_Name" HeaderText="İsim" ReadOnly="True" SortExpression="Empl_Name" />
                                <asp:BoundField DataField="Empl_Phone" HeaderText="Telefon" SortExpression="Empl_Phone" />
                                <asp:BoundField DataField="Empl_Cell" HeaderText="Cep Telefonu" SortExpression="Empl_Cell" />
                                <asp:BoundField DataField="Empl_Email" HeaderText="E-mail" SortExpression="Empl_Email" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Bölüm Adı" SortExpression="Dept_Name" />
                            </Columns>
                            <HeaderStyle BackColor="#99CCFF" ForeColor="#000066" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" BorderColor="#9DCEFF" BorderStyle="Solid" CssClass="auto-style8" Font-Names="Cascadia Code SemiBold" Height="35px" Width="177px" />
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_Employees.Empl_ID, tbl_Employees.Empl_Name, tbl_Employees.Empl_Phone, tbl_Employees.Empl_Cell, tbl_Employees.Empl_Email, tbl_Departments.Dept_Name FROM tbl_Employees INNER JOIN tbl_Departments ON tbl_Employees.Dept_ID = tbl_Departments.Dept_ID"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

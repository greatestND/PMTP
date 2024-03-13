<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_DepartmentsByEmployee.aspx.cs" Inherits="web_musaoglu.rpt_DepartmentsByEmployee" %>

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
            text-align: center;
            font-size: x-large;
            color: #000066;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 546px;
        }
        .auto-style5 {
            width: 546px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            font-size: large;
            font-family: "Cascadia Mono SemiBold";
            color: #000066;
        }
        .auto-style8 {
            width: 546px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3"><strong>Bölümlere Göre Personel Listesi</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5"><span class="auto-style7"><strong>Bölüm Seçiniz:</strong></span>&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource2" Width="1030px" BorderColor="#FFCCCC" BorderStyle="Solid" Font-Names="Arial" ForeColor="#FF0066" Height="255px">
                        <Columns>
                            <asp:BoundField DataField="Empl_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Empl_Name" HeaderText="İsim" ReadOnly="True" SortExpression="Empl_Name" />
                            <asp:BoundField DataField="Empl_Start_Date" HeaderText="Başlangıç Tarihi" SortExpression="Empl_Start_Date" />
                            <asp:CheckBoxField DataField="Is_Empl_Active" HeaderText="Aktiflik" SortExpression="Is_Empl_Active" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Cep Telefonu" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="E-mail" SortExpression="Empl_Email" />
                            <asp:BoundField DataField="Empl_Phone" HeaderText="Telefon" SortExpression="Empl_Phone" />
                            <asp:BoundField DataField="Title" HeaderText="Ünvan" SortExpression="Title" />
                            <asp:BoundField DataField="Dept_Name" HeaderText="Bölüm Adı" SortExpression="Dept_Name" />
                        </Columns>
                        <HeaderStyle BackColor="#FFCCCC" />
                        <RowStyle BackColor="White" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_Employees.Empl_ID, tbl_Employees.Empl_Name, tbl_Employees.Empl_Start_Date, 
tbl_Employees.Is_Empl_Active, tbl_Employees.Empl_Cell, tbl_Employees.Empl_Email, tbl_Employees.Empl_Phone, tbl_Lookups.Title, tbl_Departments.Dept_Name FROM tbl_Employees INNER JOIN tbl_Departments ON tbl_Employees.Dept_ID = tbl_Departments.Dept_ID INNER JOIN tbl_Lookups ON tbl_Employees.Title_ID = tbl_Lookups.LK_ID
WHERE tbl_Departments.Dept_ID=@Dept_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
        </table>
        <div class="auto-style6">
            <em>
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" BackColor="White" BorderColor="#FFCCCC" BorderStyle="Solid" Font-Bold="False" Font-Names="Cascadia Code SemiBold" Font-Size="Medium" ForeColor="#000066" Height="38px" Width="154px" />
                    </em>
        </div>
    </form>
</body>
</html>

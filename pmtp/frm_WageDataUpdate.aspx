<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_WageDataUpdate.aspx.cs" Inherits="web_musaoglu.frm_WageDataUpdate" %>

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
            width: 293px;
        }
        .auto-style4 {
            width: 293px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            text-align: center;
        }
        .auto-style9 {
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style10 {
            width: 293px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style11 {
            height: 23px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style12 {
            width: 293px;
            height: 23px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style13 {
            width: 293px;
            font-family: "Cascadia Mono SemiBold";
            height: 323px;
        }
        .auto-style14 {
            height: 323px;
        }
        .auto-style15 {
            height: 323px;
            text-align: center;
        }
        .auto-style16 {
            font-size: x-large;
            color: #000066;
        }
        .auto-style17 {
            font-family: "Cascadia Mono SemiBold";
            font-size: large;
        }
        .auto-style18 {
            font-family: "Cascadia Mono SemiBold";
            text-align: center;
        }
        .auto-style19 {
            width: 293px;
            font-family: "Cascadia Mono SemiBold";
            height: 25px;
        }
        .auto-style20 {
            font-family: "Cascadia Mono SemiBold";
            height: 25px;
        }
        .auto-style21 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Personel Maaş Veri Güncelleme</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style16">Personel Seçiniz:</span></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" CssClass="auto-style17" Width="141px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style15">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="WageID" DataSourceID="SqlDataSource2" CssClass="auto-style9" Font-Names="Arial" Height="291px" Width="1047px" BorderColor="#FFCCCC" BorderStyle="Solid" ForeColor="#FF0066">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="WageID" HeaderText="WageID" InsertVisible="False" ReadOnly="True" SortExpression="WageID" />
                                <asp:BoundField DataField="Wage_Date" HeaderText="Tarih" SortExpression="Wage_Date" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Maaş Tutarı" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Komisyon" SortExpression="Wage_Commission" />
                                <asp:BoundField DataField="Wage_Total" HeaderText="Toplam Maaş" ReadOnly="True" SortExpression="Wage_Total" />
                                <asp:BoundField DataField="Month_ID" HeaderText="MonthID" SortExpression="Month_ID" />
                                <asp:BoundField DataField="Wage_Year" HeaderText="Yıl" ReadOnly="True" SortExpression="Wage_Year" />
                            </Columns>
                            <HeaderStyle BackColor="#FFCCCC" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                </tr>
                <tr>
                    <td class="auto-style18" colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" CssClass="auto-style9" BackColor="White" BorderColor="#FFCCCC" BorderStyle="Outset" Font-Size="Large" ForeColor="#000066" Height="37px" Width="215px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [WageID], [Wage_Date], [Wage_Amount], [Wage_Commission], [Wage_Total], [Month_ID], [Wage_Year] FROM [tbl_EmployeeWages] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE tbl_EmployeeWages SET Wage_Date = @Wage_Date, Wage_Amount = @Wage_Amount, Wage_Commission = @Wage_Commission, Month_ID = @Month_ID WHERE (WageID = @WageID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Wage_Date" Type="DateTime" />
                                <asp:Parameter Name="Wage_Amount" type="Decimal"/>
                                <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                                <asp:Parameter Name="Month_ID" type="Int16"/>
                                <asp:Parameter Name="WageID" type="Int16"/>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

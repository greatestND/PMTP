<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_WageDataEntry.aspx.cs" Inherits="web_musaoglu.frm_WageDataEntry" %>

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
            height: 23px;
        }
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style4 {
            width: 465px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 465px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 465px;
            text-align: center;
        }
        .auto-style8 {
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style9 {
            width: 465px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style10 {
            width: 465px;
            font-family: "Cascadia Mono SemiBold";
            font-size: x-large;
        }
        .auto-style11 {
            height: 23px;
            width: 465px;
            font-family: "Cascadia Mono SemiBold";
            font-size: x-large;
        }
        .auto-style12 {
            font-family: "Cascadia Mono SemiBold";
            font-size: large;
        }
        .auto-style13 {
            width: 465px;
            font-family: "Cascadia Mono SemiBold";
            font-size: x-large;
            height: 36px;
        }
        .auto-style14 {
            height: 36px;
        }
        .auto-style15 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2"><strong>Personel Maaşları Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Personel Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" CssClass="auto-style12">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Tarihi:
                        </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="209px" TextMode="Date" CssClass="auto-style8" Height="19px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Ay:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Month" DataValueField="LK_ID" CssClass="auto-style12">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Maaş:</td>
                    <td class="auto-style14"><asp:TextBox ID="TextBox2" runat="server" Width="209px" CssClass="auto-style8" Height="19px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Komisyon:</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="209px" CssClass="auto-style8" Height="19px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Text="Verileri Kaydet" Width="202px" OnClick="Button1_Click" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" CssClass="auto-style15" Font-Names="Cascadia Code SemiBold" Height="33px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" BackColor="White" BorderColor="#F46A0F" BorderStyle="Outset" CssClass="auto-style15" Font-Names="Cascadia Code SemiBold" Height="33px" Width="202px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style6">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Month] FROM [tbl_Lookups]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_EmployeeWages(Empl_ID, Wage_Date, Wage_Amount, Wage_Commission, Month_ID) VALUES (@Empl_ID, @Wage_Date, @Wage_Amount, @Wage_Commission, @Month_ID)" SelectCommand="SELECT [WageID], [Empl_ID], [Wage_Date], [Wage_Amount], [Wage_Commission], [Wage_Total], [Month_ID] FROM [tbl_EmployeeWages]">
                            <InsertParameters>
                                <asp:Parameter Name="Empl_ID" />
                                <asp:Parameter Name="Wage_Date" />
                                <asp:Parameter Name="Wage_Amount" />
                                <asp:Parameter Name="Wage_Commission" />
                                <asp:Parameter Name="Month_ID" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

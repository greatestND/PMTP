<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_EmployeeDataEntry.aspx.cs" Inherits="web_musaoglu.frm_EmployeeDataEntry" %>

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
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style3 {
            font-size: xx-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style5 {
            width: 231px;
        }
        .auto-style6 {
            width: 189px;
            height: 28px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style7 {
            height: 28px;
        }
        .auto-style8 {
            width: 231px;
            height: 28px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style9 {
            width: 189px;
            height: 21px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style11 {
            width: 231px;
            height: 21px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style12 {
            height: 21px;
            font-family: "Cascadia Mono SemiBold";
            font-size: x-large;
        }
        .auto-style14 {
            font-size: large;
            height: 26px;
        }
        .auto-style18 {
            height: 21px;
            width: 282px;
        }
        .auto-style20 {
            width: 282px;
            font-size: large;
        }
        .auto-style22 {
            height: 28px;
            width: 256px;
        }
        .auto-style23 {
            height: 21px;
            width: 256px;
        }
        .auto-style24 {
            width: 256px;
        }
        .auto-style27 {
            width: 231px;
            height: 23px;
        }
        .auto-style28 {
            width: 256px;
            height: 23px;
        }
        .auto-style29 {
            height: 23px;
        }
        .auto-style30 {
            width: 189px;
            font-size: x-large;
            height: 26px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style31 {
            height: 26px;
        }
        .auto-style32 {
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style33 {
            width: 256px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style34 {
            width: 231px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style37 {
            font-family: "Cascadia Mono SemiBold";
            font-size: x-large;
        }
        .auto-style38 {
            width: 231px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style39 {
            width: 189px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style40 {
            width: 189px;
            font-family: "Cascadia Mono SemiBold";
        }
        .auto-style41 {
            width: 189px;
            height: 23px;
        }
        .auto-style42 {
            width: 189px;
        }
        .auto-style43 {
            font-family: "Cascadia Mono SemiBold";
            font-size: large;
        }
        .auto-style44 {
            font-family: "Cascadia Mono SemiBold";
            width: 282px;
        }
        .auto-style45 {
            height: 28px;
            width: 282px;
        }
        .auto-style46 {
            width: 282px;
        }
        .auto-style47 {
            height: 23px;
            width: 282px;
        }
        .auto-style48 {
            width: 231px;
            height: 28px;
            font-size: x-large;
            font-family: "Cascadia Mono SemiBold";
            text-align: left;
        }
        .auto-style49 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="5"><strong><span class="auto-style3">Personel Veri Giriş Formu</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Adı:</td>
                <td class="auto-style45">
                    <asp:TextBox ID="TextBox9" runat="server" Width="196px" CssClass="auto-style37" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style48">Soyadı:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox10" runat="server" Width="196px" CssClass="auto-style37" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style7"><span class="auto-style37">Aktif Mi?:</span><asp:CheckBox runat="server" ID="CheckBox" Checked="True" CssClass="auto-style37" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style45">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Cinsiyet:</td>
                <td class="auto-style18">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="101px" CssClass="auto-style49" Font-Names="Cascadia Code SemiBold">
                        <asp:ListItem Value="0">Kadın</asp:ListItem>
                        <asp:ListItem Value="1">Erkek</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style11">Doğum Tarihi:</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="Date" Width="196px" CssClass="auto-style43" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style12">Foto:</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">Ünvanı:</td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="LK_ID" AutoPostBack="True" CssClass="auto-style43">
                    </asp:DropDownList>
                </td>
                <td class="auto-style38">Bölümü:</td>
                <td class="auto-style24">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Dept_Name" DataValueField="Dept_ID" AutoPostBack="True" CssClass="auto-style43">
                    </asp:DropDownList>
                </td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">İşe Giriş T.:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox15" runat="server" TextMode="Date" Width="196px" CssClass="auto-style43" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style38">İş Teli:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox16" runat="server" TextMode="Phone" Width="196px" CssClass="auto-style37" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">Cep Tel:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox17" runat="server" TextMode="Phone" Width="196px" CssClass="auto-style37" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style38">Email:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox18" runat="server" TextMode="Email" Width="196px" CssClass="auto-style37" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30">Adresi:</td>
                <td class="auto-style14" colspan="3">
                    <asp:TextBox ID="TextBox19" runat="server" Width="417px" CssClass="auto-style37" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style14" colspan="3">
                    &nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">İlçesi:</td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="City" DataValueField="City" AutoPostBack="True" CssClass="auto-style43">
                    </asp:DropDownList>
                </td>
                <td class="auto-style38">İli:</td>
                <td class="auto-style24">
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="Province" DataValueField="Province" AutoPostBack="True" CssClass="auto-style43">
                    </asp:DropDownList>
                </td>
                <td class="auto-style37">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style46">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Sonuç Göster" CssClass="auto-style32"></asp:Label>
                </td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style46">
                    &nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style46">
                    &nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style47">
                    <asp:Button ID="Button1" runat="server" Text="Verileri Kaydet" Width="175px" OnClick="Button1_Click" CssClass="auto-style32" BackColor="#CCCCCC" BorderColor="#999999" Height="35px" />
                </td>
                <td class="auto-style27"></td>
                <td class="auto-style28">
                    <asp:Button ID="Button3" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" BackColor="#CCCCCC" BorderColor="#999999" Font-Names="Cascadia Code SemiBold" Height="35px" Width="170px" />
                </td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style42">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td class="auto-style46">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td class="auto-style24">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td class="auto-style32">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_Employees(Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Empl_Address, Empl_City, Empl_Province, Empl_Phone, Empl_Cell, Empl_Email, Dept_ID, Gender_ID, Title_ID, Is_Empl_Active) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_Address, @Empl_City, @Empl_Province, @Empl_Phone, @Empl_Cell, @Empl_Email, @Dept_ID, @Gender_ID, @Title_ID, @Is_Empl_Active)" SelectCommand="INSERT INTO tbl_Employee (Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Gender_ID, Is_Empl_Active, Dept_ID, Title_ID, Empl_Cell, Empl_Email, Empl_Address, Empl_City, Empl_Province)
VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Gender_ID, @Is_Empl_Active, @Dept_ID, @Title_ID, @Empl_Cell, @Empl_Email, @Empl_Address, @Empl_City, @Empl_Province)">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Province" />
                            <asp:Parameter Name="Empl_Phone" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Is_Empl_Active" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Is_Empl_Active" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Province" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style47"></td>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

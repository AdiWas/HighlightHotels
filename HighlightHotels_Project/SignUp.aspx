<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 20px;
        }
        .auto-style5 {
            height: 21px;
        }
        .auto-style7 {
            height: 22px;
        }
        .auto-style19 {
            height: 18px;
        }
        .auto-style23 {
            height: 23px;
        }
        .auto-style24 {
            width: 479px;
            height: 21px;
        }
        .auto-style25 {
            width: 479px;
        }
        .auto-style26 {
            width: 738px;
            height: 44px;
            margin-left: 626px;
        }
        .auto-style27 {
            width: 479px;
            height: 18px;
        }
        .auto-style28 {
            width: 479px;
            height: 22px;
        }
        .auto-style29 {
            width: 479px;
            height: 23px;
        }
        .auto-style30 {
            width: 479px;
            height: 20px;
        }
        .auto-style37 {
            width: 42px;
        }
        .auto-style38 {
            height: 21px;
            width: 42px;
        }
        .auto-style39 {
            height: 20px;
            width: 42px;
        }
        .auto-style40 {
            height: 18px;
            width: 42px;
        }
        .auto-style41 {
            height: 22px;
            width: 42px;
        }
        .auto-style42 {
            height: 23px;
            width: 42px;
        }
        .auto-style50 {
            height: 20px;
            width: 12px;
        }
        .auto-style51 {
            width: 12px;
        }
        .auto-style52 {
            height: 21px;
            width: 12px;
        }
        .auto-style53 {
            height: 18px;
            width: 12px;
        }
        .auto-style54 {
            height: 22px;
            width: 12px;
        }
        .auto-style55 {
            height: 23px;
            width: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <caption>
            <h1 style="color: #800000; font-family: 'Yu Mincho Demibold'; text-decoration: underline;" class="auto-style26">הרשמה</h1>
        </caption>
        <tr>
            <td class="auto-style25">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="אנא הזן רק אותיות" ForeColor="#993333" ValidationExpression="[a-z,A-Z,א-ת,]+"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style51">
                <asp:Label ID="Label1" runat="server" Text="*שם פרטי"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="אנא הזן שם פרטי" ForeColor="#993333"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="אנא הזן רק אותיות" ForeColor="#993333" ValidationExpression="[a-z,A-Z,א-ת,]+"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style52">
                <asp:Label ID="Label2" runat="server" Text="*שם משפחה"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="אנא הזן שם משפחה" ForeColor="#993333"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="אנא הזן תעודת זהות תקינה" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="#993333"></asp:CustomValidator>
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="אנא הזן רק ספרות" ValidationExpression="[0-9,]+" ForeColor="#993333"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Wrap="False"></asp:TextBox>
            </td>
            <td class="auto-style50">
                <asp:Label ID="Label3" runat="server" Text="*תעודת זהות"></asp:Label>
            </td>
            <td class="auto-style39">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="אנא הזן תעודת זהות" ForeColor="#993333"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style19"></td>
            <td class="auto-style53"></td>
            <td class="auto-style40"></td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="128px">
                    <asp:ListItem>זכר</asp:ListItem>
                    <asp:ListItem>נקבה</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style52">
                <asp:Label ID="Label4" runat="server" Text="מין"></asp:Label>
            </td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Label ID="Label13" runat="server" ForeColor="#993333" Text="אנא בחר תחילה את השנה, לאחר מכן את החודש ולבסוף את היום"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="56px" Height="16px">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server" Width="43px" Height="16px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList4" runat="server" Width="53px" Height="16px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style54">
                <asp:Label ID="Label5" runat="server" Text="תאריך לידה"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style7"></td>
            <td class="auto-style54"></td>
            <td class="auto-style41"></td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41"></td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="19px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style51">
                <asp:Label ID="Label7" runat="server" Text="כתובת"></asp:Label>
            </td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="אנא הזן כתובת דוא&quot;ל תקינה" ForeColor="#993333" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style54">כתובת דואר אלקטרוני</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="הזן מספר טלפון תקין" ForeColor="#993333" ValidationExpression="0?(5[024378])(\-)?\d{7}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox6" runat="server" Width="98px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style52">
                <asp:Label ID="Label8" runat="server" Text="*טלפון נייד"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="אנא הזן מספר טלפון נייד" ForeColor="#993333"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style5"></td>
            <td class="auto-style52"></td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style50">
                <asp:Label ID="Label10" runat="server" Text="*סיסמא"></asp:Label>
            </td>
            <td class="auto-style39">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="אנא הזן סיסמא" ForeColor="#993333"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="אימות הסיסמא לא זהה לסיסמא שהקשת" ForeColor="#993333"></asp:CompareValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" ViewStateMode="Disabled"></asp:TextBox>
            </td>
            <td class="auto-style51">
                <table class="nav-justified">
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="*אימות סיסמא"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style37">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="אנא הזן אימות סיסמא" ForeColor="#993333"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style37">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
            </td>
            <td class="auto-style23"></td>
            <td class="auto-style55"></td>
            <td class="auto-style42"></td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="?האם את/ה רוצה להירשם כעובד/ת" Width="230px" />
            </td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="שלח" Width="76px" />
            </td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


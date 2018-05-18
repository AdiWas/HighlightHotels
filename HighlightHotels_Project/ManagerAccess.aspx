<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ManagerAccess.aspx.cs" Inherits="Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 74px;
        }
        .auto-style2 {
            height: 76px;
        }
        .auto-style3 {
            height: 100px;
        }
        .auto-style4 {
            height: 131px;
        }
        .auto-style9 {
            height: 74px;
            width: 234px;
        }
        .auto-style10 {
            height: 76px;
            width: 234px;
        }
        .auto-style11 {
            height: 100px;
            width: 234px;
        }
        .auto-style12 {
            height: 131px;
            width: 234px;
        }
        .auto-style13 {
            height: 74px;
            width: 430px;
        }
        .auto-style14 {
            height: 76px;
            width: 430px;
        }
        .auto-style15 {
            height: 100px;
            width: 430px;
        }
        .auto-style16 {
            height: 131px;
            width: 430px;
        }
        .auto-style17 {
            height: 74px;
            width: 128px;
        }
        .auto-style18 {
            height: 76px;
            width: 128px;
        }
        .auto-style19 {
            height: 100px;
            width: 128px;
        }
        .auto-style20 {
            height: 131px;
            width: 128px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style9">
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="אנא הזן תעודת זהות תקינה" ForeColor="Maroon" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="אנא הזן רק ספרות" ForeColor="Maroon" ValidationExpression="[0-9,]+"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="תעודת זהות מנהל"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style10"></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ViewStateMode="Disabled"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="סיסמת מנהל"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="שלח" />
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style12"></td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style4"></td>
        </tr>
    </table>
</asp:Content>


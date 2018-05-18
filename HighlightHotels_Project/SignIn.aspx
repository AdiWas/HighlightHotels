<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 260px;
        }
        .auto-style2 {
            height: 94px;
        }
        .auto-style5 {
            width: 269px;
        }
        .auto-style6 {
            height: 94px;
            width: 269px;
        }
        .auto-style11 {
            height: 94px;
            width: 198px;
        }
        .auto-style12 {
            width: 198px;
        }
        .auto-style14 {
            height: 94px;
            width: 212px;
        }
        .auto-style20 {
            width: 212px
        }
        .auto-style21 {
            height: 74px;
            width: 212px;
        }
        .auto-style22 {
            height: 74px;
            width: 269px;
        }
        .auto-style23 {
            height: 74px;
            width: 198px;
        }
        .auto-style24 {
            height: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style21">
            </td>
            <td class="auto-style22">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="אנא הזן רק ספרות" ForeColor="#993333" ValidationExpression="[0-9,]+"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="אנא הזן תעודת זהות תקינה" ForeColor="#993333" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:Label ID="Label1" runat="server" Text="תעודת זהות"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style6"></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="סיסמא"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="שלח" />
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Width="240px"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


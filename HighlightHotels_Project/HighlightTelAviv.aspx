<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="HighlightTelAviv.aspx.cs" Inherits="HighlightTelAviv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 125%;
            height: 187px;
        }
        .auto-style5 {
            margin-left: 311;
        }
        .auto-style8 {
            width: 266px;
        }
        .auto-style9 {
            width: 313px;
        }
        .auto-style10 {
            width: 6px;
        }
        .auto-style11 {
            width: 313px;
            height: 72px;
        }
        .auto-style12 {
            height: 72px;
        }
        .auto-style13 {
            width: 6px;
            height: 72px;
        }
        .auto-style14 {
            width: 266px;
            height: 72px;
        }
        .auto-style15 {
            width: 313px;
            height: 26px;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            width: 6px;
            height: 26px;
        }
        .auto-style18 {
            width: 266px;
            height: 26px;
        }
        .auto-style19 {
            width: 310px;
        }
        .auto-style20 {
            width: 310px;
            height: 72px;
        }
        .auto-style21 {
            width: 310px;
            height: 26px;
        }
        .auto-style22 {
            width: 251px;
        }
        .auto-style23 {
            width: 251px;
            height: 72px;
        }
        .auto-style24 {
            width: 251px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <caption>
            <h1 style="font-size: xx-large; font-style: l; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: #993333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Highlight Tel Aviv</h1>
        </caption>
    <h1 style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: xx-large; color: #996600">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;גלריה</h1>
    <table class="auto-style3">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">
        
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            </td>
            <td class="auto-style8">
        
                &nbsp;</td>
            <td class="auto-style22">
        
                &nbsp;</td>
            <td class="auto-style19">
        
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">
            <asp:Timer ID="Timer1" runat="server" Interval="2500" OnTick="Timer1_Tick">
            </asp:Timer>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">
            <asp:Image ID="Image1" runat="server" Height="300px" Width="678px" />
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
            </td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style12"></td>
            <td class="auto-style13">
            <asp:Button ID="Button1" runat="server" Text="הפסק גלריה" OnClick="Button1_Click" Width="110px" CssClass="auto-style5" />
            </td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style23">
                &nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownListDay" runat="server" Height="16px" OnSelectedIndexChanged="DropDownListDay_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownListMonth" runat="server" OnSelectedIndexChanged="DropDownListMonth_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownListYear" runat="server" OnSelectedIndexChanged="DropDownListYear_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                <asp:Image ID="Image2" runat="server" />
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownListDayL" runat="server" OnSelectedIndexChanged="DropDownListDayL_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style22">
                <asp:DropDownList ID="DropDownListMonthL" runat="server" OnSelectedIndexChanged="DropDownListMonthL_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style19">
                <asp:DropDownList ID="DropDownListYearL" runat="server" OnSelectedIndexChanged="DropDownListYearL_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownListNumPeople" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style18">
            </td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="להזמנה" />
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        </table>
        
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    </asp:UpdatePanel>
</asp:Content>


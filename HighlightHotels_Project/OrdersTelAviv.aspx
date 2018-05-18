<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="OrdersTelAviv.aspx.cs" Inherits="OrdersTelAviv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBoxNum" runat="server" OnTextChanged="TextBoxNum_TextChanged"></asp:TextBox>
    <asp:TextBox ID="TextBoxExM" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBoxExY" runat="server"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>MasterCard</asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>


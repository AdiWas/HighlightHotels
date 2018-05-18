<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="HotelsList.aspx.cs" Inherits="HotelsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 694px;
        }
        .auto-style2 {
            width: 694px;
            height: 636px;
        }
        .auto-style3 {
            height: 636px;
        }
        .auto-style4 {
            width: 694px;
            height: 21px;
        }
        .auto-style5 {
            height: 21px;
        }
        .auto-style9 {
            margin-top: 2px;
        }
        .auto-style10 {
            width: 361px;
            height: 636px;
        }
        .auto-style12 {
            width: 361px;
            height: 21px;
        }
        .auto-style13 {
            width: 361px
        }
        .auto-style14 {
            height: 636px;
            width: 411px;
        }
        .auto-style15 {
            width: 411px;
        }
        .auto-style16 {
            height: 21px;
            width: 411px;
        }
        .auto-style17 {
            height: 636px;
            width: 330px;
        }
        .auto-style18 {
            width: 330px;
        }
        .auto-style19 {
            height: 21px;
            width: 330px;
        }
        .auto-style20 {
            height: 636px;
            width: 601px;
        }
        .auto-style21 {
            width: 601px;
        }
        .auto-style22 {
            height: 21px;
            width: 601px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style2">
                <asp:FormView ID="FormView2" runat="server" CssClass="auto-style9" DataSourceID="SqlDataSource1" Height="358px" OnPageIndexChanging="FormView2_PageIndexChanging">
                    <EditItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image11" runat="server" Height="200px" ImageUrl="~/Hotels Pictures/hotel1.bmp" Width="300px" />
                        <br />
                        Hotel name:<asp:Label ID="hotel_nameLabel" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        <asp:Label ID="num_of_starsLabel" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        stars hotel<br />Location:
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        Phone number:
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        Email: 
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <br />
                        <asp:Button ID="Button11" runat="server" ForeColor="#993333" Text="לפרטים" OnClick="Button11_Click" />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [hotel_name], [location], [phone], [email], [num_of_stars] FROM [tbl_hotels] WHERE ([hotel_code] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="hotel_code" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style20">
                <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource2">
                    <EditItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image12" runat="server" Height="200px" ImageUrl="~/Hotels Pictures/hotel2.jpg" Width="300px" />
                        <br />
                        Hotel name:
                        <asp:Label ID="hotel_nameLabel" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        <asp:Label ID="num_of_starsLabel" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        stars hotel<br />Location:
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        Phone number:
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        Email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <br />
                        <asp:Button ID="Button12" runat="server" ForeColor="#993333" Text="לפרטים" OnClick="Button12_Click" />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [hotel_name], [location], [phone], [email], [num_of_stars] FROM [tbl_hotels] WHERE ([hotel_code] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="hotel_code" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style14">
                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource3">
                    <EditItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image13" runat="server" Height="200px" ImageUrl="~/Hotels Pictures/hotel3.jpg" Width="300px" />
                        <br />
                        Hotel name:
                        <asp:Label ID="hotel_nameLabel" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        <asp:Label ID="num_of_starsLabel" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        stars hotel<br />Location:
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        Phone number:
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        Email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <br />
                        <asp:Button ID="Button13" runat="server" ForeColor="#993333" Text="לפרטים" OnClick="Button13_Click" />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [hotel_name], [location], [phone], [email], [num_of_stars] FROM [tbl_hotels] WHERE ([hotel_code] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3" Name="hotel_code" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">
                <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource4">
                    <EditItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image14" runat="server" Height="200px" ImageUrl="~/Hotels Pictures/hotel4.jpg" Width="300px" />
                        <br />
                        Hotel name: 
                        <asp:Label ID="hotel_nameLabel" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        <asp:Label ID="num_of_starsLabel" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        stars hotel<br />Location: 
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        Phone number:
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        Email: 
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <br />
                        <asp:Button ID="Button14" runat="server" ForeColor="#993333" Text="לפרטים" OnClick="Button14_Click" />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td class="auto-style21">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource5">
                    <EditItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image15" runat="server" Height="200px" ImageUrl="~/Hotels Pictures/hotel5.jpg" Width="300px" />
                        <br />
                        Hotel name: 
                        <asp:Label ID="hotel_nameLabel" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        <asp:Label ID="num_of_starsLabel" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        stars hotel<br />Location: 
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        Phone number:
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        Email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <br />
                        <asp:Button ID="Button15" runat="server" ForeColor="#993333" Text="לפרטים" OnClick="Button15_Click" />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td class="auto-style15">
                <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource6">
                    <EditItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        hotel_name:
                        <asp:TextBox ID="hotel_nameTextBox" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        location:
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        num_of_stars:
                        <asp:TextBox ID="num_of_starsTextBox" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image16" runat="server" Height="200px" ImageUrl="~/Hotels Pictures/hotel6.jpg" Width="300px" />
                        <br />
                        Hotel name: 
                        <asp:Label ID="hotel_nameLabel" runat="server" Text='<%# Bind("hotel_name") %>' />
                        <br />
                        <asp:Label ID="num_of_starsLabel" runat="server" Text='<%# Bind("num_of_stars") %>' />
                        stars hotel<br />Location: 
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                        <br />
                        Phone number:
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                        <br />
                        Email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <br />
                        <asp:Button ID="Button16" runat="server" ForeColor="#993333" Text="לפרטים" OnClick="Button16_Click" />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [hotel_name], [location], [phone], [email], [num_of_stars] FROM [tbl_hotels] WHERE ([hotel_code] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="4" Name="hotel_code" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style22">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [hotel_name], [location], [phone], [email], [num_of_stars] FROM [tbl_hotels] WHERE ([hotel_code] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="5" Name="hotel_code" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style16">
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [hotel_name], [location], [phone], [email], [num_of_stars] FROM [tbl_hotels] WHERE ([hotel_code] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="6" Name="hotel_code" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style19"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


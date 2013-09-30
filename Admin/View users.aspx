<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="View users.aspx.cs" Inherits="View_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user_pannel">
        <ul>
            <li><asp:RadioButton runat="server" ID="users_data" Text="ALL USERS" GroupName="user" OnCheckedChanged="all_user_change" AutoPostBack="True"/> </li>
            <li><asp:RadioButton runat="server" ID="Bloggers" Text="BLOG USERS" GroupName="user" AutoPostBack="True" OnCheckedChanged="Bloggers_CheckedChanged"/> </li>
            <li><asp:RadioButton runat="server" ID="Volunteer" Text="VOLUNTEER" GroupName="user" AutoPostBack="True"/> </li>
            <li><asp:RadioButton runat="server" ID="email_subs" Text="Email-Subscribers" GroupName="user" AutoPostBack="True" OnCheckedChanged="email_subs_CheckedChanged"/> </li>
            <li><asp:RadioButton runat="server" ID="event_subs" Text="Event Subscribers" GroupName="user" AutoPostBack="True"/> </li>
        </ul>

    </div>
    <div class="user_pannel2">

        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="400px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="773px">
            <Columns>
                <asp:CommandField SelectText="Delete" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>

    </div>
</asp:Content>


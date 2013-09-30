<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Admin_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="edit_email_subs">
                 <div class="chp-close">X</div>
        <table>
            <tr>
                <th>S_id</th><td><asp:TextBox runat="server" ID="s_id_dd" ></asp:TextBox> </td>
            </tr>
            <tr>
                <th>Name</th><td><input type="text" runat="server" id="name" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Fields can't be empty" ForeColor="Red" style="z-index: 1; left: 329px; top: 70px; position: absolute; height: 19px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>Email_id</th><td><input type="text" runat="server" id="email_id" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email_id" ErrorMessage="Fields can't be empty" ForeColor="Red" style="z-index: 1; left: 329px; top: 98px; position: absolute"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email_id" ErrorMessage="Invalid email validater" ForeColor="Red" style="z-index: 1; left: 395px; top: 94px; position: absolute"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="detail" runat="server"></asp:Label></td>
            </tr>
            <tr>
                
                <th><asp:Button runat="server" ID="add" Text="Add" OnClick="add_Click" /></th>
                <th><asp:Button runat="server" ID="update" Text="Update" OnClick="update_Click" /></th>
            </tr>
            <tr>
                <td><asp:Button runat="server" ID="Button1" Text="Update" OnClick="Button1_Click"/></td>
            </tr>
        </table>
    </div>
</asp:Content>


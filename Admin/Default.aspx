<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/layout_admin.css" rel="stylesheet" />
    
</head>
<body> 
   <form id="form1" runat="server">
<div id="main_outer">
<div id="banner"></div>
<div id="login_outer">
  <table height="600px" width="900px" cellpadding="0" cellspacing="0" align="center">
<tr>
    <td valign="middle"><table width="400px" height="200px"  align="center" cellpadding="0" cellspacing="0" bgcolor="#fbfbfb";>
      <form method="post" action="http://www.securedlifeindia.com/admin/checkLogin.php" id="frm" name="frm">
        <tr>
          <td height="35" colspan="2" align="center"><table width="400px" height="200px"  align="center" cellpadding="0" cellspacing="0" bgcolor="#fbfbfb";>
            <tr>
              <td colspan="2" align="center" valign="top"><h1>Admin Panel</h1></td>
            </tr>
            <tr>
              <td width="111" height="35" align="right" class="black_text">Username : </td>
              <td width="287" height="35" align="left"><input type="text" id="user_name" class="ga_area" runat="server" required="required" /></td>
            </tr>
            <tr>
              <td height="35" align="right" class="black_text"> Password :</td>
              <td height="35" align="left"><input type="password" id="password" class="ga_area" runat="server" required="required" /></td>
            </tr>
            <tr>
              <td height="35" colspan="2" align="center"><a href="forget.html">Forgot Password</a></td>
            </tr>
              <tr>
              <td height="35" colspan="2" align="center"><a href="forget.html"><asp:Label runat="server" ID="msg" ForeColor="Red"></asp:Label></a></td>
            </tr>
            <tr>
              <td height="50" colspan="2" align="center"><asp:button  Text="Submit" OnClick="login" runat="server" id="submit123" Width="97px" /></td>
            </tr>
          </table>            <a href="forget.html"></a></td>
        </tr>
      </form>
    </table></td>
</tr>    
</table>
</div>

</div>
       </form>
</body>

</html>
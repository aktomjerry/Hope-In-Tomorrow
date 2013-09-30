<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="Admin_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="admin_text">
<div style="margin:0 auto; width:400px;">
  <div style="float:left; width:380px; background:#FFF; margin:13px; padding-bottom:8px;">
  <div style="float:left; width:100%; text-align:center; font-size:14px; color:#666; height:25px; padding-top:5px; "><strong>Change Password</strong></div>
    <div style="float:left; width:100%; text-align:center; font-size:14px; color:#666; padding-top:5px;">
      <div style="float:left; margin-left:8px; margin-top:3px;  margin-right:25px; ">Old Password :</div>   <div >   <input runat="server" type="password" name="oldpwd" id="oldpwd" class="ga_area_ms" required="required"/> </div> 
          <%--<div style="float:left; width:97%; margin-top:10px; height:15px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;"></div>--%>

        <div style="float:left; margin-left:8px; margin-top:3px;  margin-right:23px; ">New Password : </div>     <div><input runat="server" type="password" name="newpwd" id="newpwd" class="ga_area_ms" required="required" /></div>
          <%--<div style="float:left; width:97%; margin-top:10px; height:15px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;"></div>--%>


             <div style="float:left; margin-left:8px; margin-top:3px; ">Confirm Password :</div>   <div >   <input type="password" name="conpwd" id="conpwd" class="ga_area_ms" runat="server" required="required" /> </div> 
         

       
              
            
         <%-- <div style="float:left; width:97%; margin-top:10px; height:30px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="All Fields Required......" ForeColor="Red" style="z-index: 1; left: 618px; top: 371px; position: absolute; height: 22px; width: 200px" ControlToValidate="newpwd"></asp:RequiredFieldValidator>
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="All Fields Required......" ForeColor="Red" style="z-index: 1; left: 526px; top: 330px; position: absolute; height: 21px; width: 200px" ControlToValidate="oldpwd"></asp:RequiredFieldValidator>
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="All Fields Required......" ForeColor="Red" style="z-index: 1; left: 600px; top: 249px; position: absolute; height: 22px; width: 200px" ControlToValidate="conpwd"></asp:RequiredFieldValidator>
              
              </div>--%>
         <div style="float:left; width:97%; margin-top:10px; height:15px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
             
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both Password Must Be Same............" ForeColor="Red" ControlToCompare="newpwd" ControlToValidate="conpwd"></asp:CompareValidator>
             
         </div>

          <div style="float:left; width:45%; margin-top:10px; height:30px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
    <asp:Button Text="update" runat="server" ID="update" Width="105px" OnClick="update_Click"/></div>
          <div style="float:right; width:50%; margin-top:10px; height:30px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
          <input type="reset" value="Reset" style="width: 105px"/>    
          </div>
    
    
        
        </div>
  
  
  </div>
        </div>
        
    </div>
</asp:Content>


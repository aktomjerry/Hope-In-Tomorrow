<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="admin_text">
        <div style="margin:0 auto; width:600px;">
             <div style="float:left; width:490px; background:#FFF; margin:13px; padding-bottom:8px;">
                
                 <br />
  <div style="float:left; width:100%; text-align:center; font-size:25px; color:#666; height:25px; padding-top:5px; "><strong><u>Upload News</u></strong></div>
                 <br />
                 <br />
                 <br />

                  <%--<div style="float:left;">--%>
                 <div style="float:left; width:97%; ">
                      <div style="float:left; margin-left:8px; margin-top:3px;  margin-right:25px;font-family:arial,Tahoma;font-size:13px;font-weight:bold; ">News Headline ::</div> 
                 <div style="float:right; margin-right:30px;"> 
                     <input runat="server" type="text"  id="event_title" class="ga_area_ms" required="required" placeholder="Enter Event Title"/> </div> 
                  </div>
         
                 <div style="float:left; width:97%; ">
                      <div style="float:left; margin-left:8px; margin-top:3px;   margin-right:25px;font-family:arial,Tahoma;font-size:13px;font-weight:bold; ">News Description ::</div> 
                 <div style="float:left;margin-left:4px;"> 
                     <asp:TextBox TextMode="MultiLine" runat="server" ID="event_descp" CssClass="ga_area_ms" Height="60px" ></asp:TextBox>
                 </div> 
                  </div>



                  <div style="float:left; width:45%; margin-top:10px; height:30px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
    <asp:Button Text="update" runat="server" ID="Submit" Width="105px" /></div>
          <div style="float:right; width:50%; margin-top:10px; height:30px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
          <input type="reset" value="Reset" style="width: 105px"/>    
          </div>
                 

                 


</div>
            </div>
           
    </div>

</asp:Content>


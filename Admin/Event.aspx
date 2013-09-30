<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="Admin_Event" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="admin_text">
        <div style="margin:0 auto; width:600px;">
             <div style="float:left; width:490px; background:#FFF; margin:13px; padding-bottom:8px;">
                
                 <br />
  <div style="float:left; width:100%; text-align:center; font-size:25px; color:#666; height:25px; padding-top:5px; "><strong><u>ADD Event</u></strong></div>
                 <br />
                 <br />
                 <br />

                  <%--<div style="float:left;">--%>
                 <div style="float:left; width:97%; ">
                      <div style="float:left; margin-left:8px; margin-top:3px;  margin-right:25px;font-family:arial,Tahoma;font-size:13px;font-weight:bold; ">Event Title ::</div> 
                 <div style="float:right; margin-right:30px;"> 
                     <input runat="server" type="text"  id="event_title" class="ga_area_ms" required="required" placeholder="Enter Event Title"/> </div> 
                  </div>



                
                 <div style="float:left; width:97%; ">
                      <div style="float:left; margin-left:8px; margin-top:3px;   margin-right:25px;font-family:arial,Tahoma;font-size:13px;font-weight:bold; ">Event Place ::</div> 
                 <div style="float:right; margin-right:30px;">
                     <input runat="server" type="text"  id="event_place" class="ga_area_ms" required="required" placeholder="Enter Event Title"/> </div> 
                  </div>

                 <div style="float:left; width:97%;">
                  <div style="float:left; margin-left:8px; margin-top:3px;  margin-right:25px;font-family:arial,tahoma;font-size:13px;font-weight:bold; ">Event Date ::</div>  
                     <div style="float:right; "><asp:imagebutton id="imgbtncalendar"  runat="server" imageurl="../images/calender.png" height="23px" width="22px" /> 
                    <asp:toolkitscriptmanager id="toolkitscriptmanager1" runat="server"></asp:toolkitscriptmanager>
                     <asp:calendarextender id="event_date_calendarextender" enabled="true" targetcontrolid="event_date" popupbuttonid="imgbtncalendar"  runat="server">
                     </asp:calendarextender>
                          
                    </div>
                  <div style="float:right;margin-right:10px;">
                     <asp:textbox id="event_date" runat="server" class="ga_area_ms" readonly="true"></asp:textbox>
                    </div>
                     
                     </div>

                     <div style="float:left; width:97%; ">
                      <div style="float:left; margin-left:8px; margin-top:3px;   margin-right:25px;font-family:arial,Tahoma;font-size:13px;font-weight:bold; ">Event Time ::</div> 
                  <div style="float:right; margin-right:30px;">
                     <input runat="server" type="time"  id="event_time" class="ga_area_ms" required="required" placeholder="Enter Event Title"/> </div> 
                  </div>

                     
                 <div style="float:left; width:97%; ">
                      <div style="float:left; margin-left:8px; margin-top:3px;   margin-right:25px;font-family:arial,Tahoma;font-size:13px;font-weight:bold; ">Event Images ::</div> 
                  <div style="float:right; margin-right:30px;">
                     <asp:FileUpload AllowMultiple="true" runat="server" id="event_images" Class="ga_area_ms"/> </div> 
                  </div>

                   <div style="float:left; width:97%; ">
                      <div style="float:left; margin-left:8px; margin-top:3px;   margin-right:25px;font-family:arial,Tahoma;font-size:13px;font-weight:bold; ">Event Description ::</div> 
                  <div style="float:right; margin-right:30px;"> 
                     <asp:TextBox TextMode="MultiLine" runat="server" ID="event_descp" CssClass="ga_area_ms" Height="60px"></asp:TextBox>
                 </div> 
                  </div>
                  <div style="float:left; width:45%; margin-top:10px; height:30px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
    <asp:Button Text="Submit" runat="server" ID="Submit" Width="105px" OnClick="Submit_Click" /></div>
          <div style="float:right; width:50%; margin-top:10px; height:30px; padding-top:5px; padding-right:5px; background-color:#FFF; text-align:center;">
          <input type="reset" value="Reset" style="width: 105px"/>    
          </div>
                 

                 


</div>
            </div>
           
    </div>
</asp:Content>


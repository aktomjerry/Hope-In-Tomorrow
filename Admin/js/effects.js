/// <reference path="../Edit.aspx" />

$(function () {
           $("#chp").click(function () {

               $("#changepassword").slideToggle(2000);
               
               
           });
           $(".chp-close").click(function () {
               $("#changepassword").slideUp(2000);
           });
          
});
$(function () {
    $("#edit_call").click(function () {
        $(location).attr("href", "Edit.aspx");
    });
    $(".chp-close").click(function () {
        $(location).attr("href", "Home.aspx");
    });
   
});

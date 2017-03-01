var statusChanger = (function(){
   var statusColor = function() {$(".status:contains('open')").css("color", "red");

   $(".status:contains('pending')").css("color", "yellow");

   $(".status:contains('resolved')").css("color", "green");

 };

 return {
   color: statusColor
 };
}());

statusChanger.color();

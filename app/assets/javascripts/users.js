var change = function() {
   $(".radio").on("change", function(){
     var id = $(this).data('id');
     $('#' + id).addClass('none').siblings().removeClass('none');
   });
};
$(document).on("page:load ready", change);

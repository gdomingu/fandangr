$(document).ready(function(){

  $('.actions').click(function() {
    $(this).closest('.seat').addClass('taken');
    $(this).hide();
  });

});
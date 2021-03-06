var currentYear = new Date().getFullYear();
var yearRange = '1925:'+currentYear;
$(function() {
  $('#visitor_receipt_date').datepicker({
    dateFormat: 'dd/mm/yy',
      changeMonth: true,
      changeYear: true
    }
  );
});
$(function() {
  $('#visitor_date_of_birth').datepicker({
    dateFormat: 'dd/mm/yy' ,
    changeMonth: true,
    changeYear: true,
    yearRange: yearRange,
    onSelect: function(dateText, inst) {
      var dob_year = new Date($(this).val()).getFullYear();
      var current_date_year = (new Date()).getFullYear();
      $("#visitor_age").val(current_date_year - dob_year);
      $(".hidden_filed_age").val(current_date_year - dob_year);
    } 
  });
  $("#visitor_date_of_birth").on('focusout', function(){
    var dob_year = new Date($(this).val()).getFullYear();
    var current_date_year = (new Date()).getFullYear();
    $("#visitor_age").val(current_date_year - dob_year);
    $(".hidden_filed_age").val(current_date_year - dob_year);
  });
});



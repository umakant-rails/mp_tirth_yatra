$(function() {
  $('#visitor_receipt_date').datepicker();
});
$(function() {
  $('#visitor_date_of_birth').datepicker({
    onSelect: function(dateText, inst) {
      var dob_year = new Date($(this).val()).getFullYear();
      var current_date_year = (new Date()).getFullYear();
      $("#visitor_age").val(current_date_year - dob_year);
    },
    onClose: function () {
      console.log('sfs fsdfsd');
    }  
  });
});

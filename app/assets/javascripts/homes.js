var authFunctions = function(){
  var validateDistrict = function(){
    var district = $("#yatra_district").val();
    return (district.length > 0);
  };
  var validateYatraSelection = function(){
    var yatraName = $("#yatra_name").val();
    return (yatraName.length > 0);
  };
  var getUsers = function(){
    var htmlString = '<option value="">Select User</option>';
    $.ajax({
      url: '/homes/get_users',
      type:"post",
      dataType: 'script',
      success: function (users) {
        var usersData = jQuery.parseJSON(users);
        $.each(usersData, function(key, user){
          htmlString += '<option value="'+ user.email +'">' + user.user_name + '</option>'; 
        });
        $("#user_email").html(htmlString);
      }
    });
  };
  
  return {
    validateDistrict : function(){ return  validateDistrict(); },
    validateYatraSelection : function(){ return validateYatraSelection(); },
    getUsers : function(){ return getUsers(); }
  }
}();

$(document).ready(function(){

  $("#select_yatra").on('click', function(){
    var isDistrict = authFunctions.validateDistrict();
    var isYatraSelected = authFunctions.validateYatraSelection();

    if(isDistrict && isYatraSelected){
      authFunctions.getUsers();
      appFunction.showMessage('success', 'Successfully selected yatra');
    } else{
      appFunction.showMessage('error', 'Your action has failed');
    }
  });

});

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require homes
//= require moment
//= require bootstrap-datetimepicker

//= require jquery-ui
//= require jquery-ui/datepicker

//= require_tree .

var appFunction = function(type, message){
  var showMessage = function(type, message){
    var htmlMessageString = '';
    if(type == 'success'){
      htmlMessageString = htmlMessageString + '<p class="alert notice alert-success"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>' + message + '</p>';
    } else if(type == 'error') {
      htmlMessageString = htmlMessageString + '<p class="alert notice alert-danger"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>' + message + '</p>';
    }
    $("#alert_msg").html(htmlMessageString);
    $('html').scrollTop(0);
  };
  return {
    showMessage: function(type, message){showMessage(type, message);}
  }
}();

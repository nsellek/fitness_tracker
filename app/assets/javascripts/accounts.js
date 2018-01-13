$(document).ready(function(){
  $('#height_ft, #height_in, #account_user_weight').keypress(function(e){
    return isNumberKey(e);
  });
});

function isNumberKey(evt){
  var charCode = (evt.which) ? evt.which : evt.keyCode;
  if (charCode != 46 && charCode > 31
    && (charCode < 48 || charCode > 57))
    return false;

    return true;
  }

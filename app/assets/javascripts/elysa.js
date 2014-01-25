$( "#divregistro" ).click(function() {
  alert( "Handler for .click() called." );
});

function showregistro(){
  console.log("OKA");
  $("#formregistro").toggleClass( "show" );
    $("#divregistro").hide();
}




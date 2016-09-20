$(document).ready(function() {
  $("").on("click", function(){
    event.preventDefault();

    var bar = $(this)

    $.ajax({
      url: "/games",
      type: "POST"
    }).done(function(response){
      $(".bar-name").innerHTML
    }

  })


})

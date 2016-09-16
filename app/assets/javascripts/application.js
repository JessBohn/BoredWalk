
$(document).ready(function() {
  $("td").on("click", function(e) {
    e.preventDefault()
    $(this).css("background-color", "#a2a2c3")
    $.ajax({
      type: "put",
      url: "/games/1"
    }).done
  })
})

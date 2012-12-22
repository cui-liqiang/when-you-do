$(document).ready ->
  $("#topic_description").focus()
  $(".item_container input").live "keypress", (evt) ->
    if evt.charCode == 13
	    $(".item_container").append "<div><input name='items[][content]' type='text'></div>"
	    $(".item_container input:last").focus()
	    evt.preventDefault()
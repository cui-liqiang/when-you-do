$(document).ready ->
  $(".add-button").click ->
    $(".item_container").append "<div><label for='item'>Item</label><input name='items[][content]' type='text'></div>"
    false
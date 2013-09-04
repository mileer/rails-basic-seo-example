# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $("#list_tags").html(list_tags())

list_tags = ->  
  "<b>Title:</b> \"" + $('title').text() + "\"<br />" +
  "<b>Meta Description:</b> \"" + $('meta[name=description]').attr('content') + "\"<br />" +
  "<b>Meta Keywords:</b> \"" + $('meta[name=keywords]').attr('content') + "\"<br />" +
  "<b>Robots:</b> \"" + $('meta[name=robots]').attr('content') + "\""

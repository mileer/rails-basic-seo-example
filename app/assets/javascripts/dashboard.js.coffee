# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $("#list_tags").html(list_tags())

list_tags = ->  
  "Title: \"" + $('title').text() + "\"<br />Meta Description: \"" + $('meta[name=description]').attr('content') + "\"<br />Meta Keywords: \"" + $('meta[name=keywords]').attr('content') + "\"<br />Robots: \"" + $('meta[name=robots]').attr('content') + "\""

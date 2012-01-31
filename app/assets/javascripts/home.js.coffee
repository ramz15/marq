# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  
  _removeLogin = (e) ->
    e.preventDefault()
    $('#login').remove()
    
  _showUpload = (e) ->
    e.preventDefault
    $('#upload').show()
  
  _showComments = (e) ->
    e.preventDefault
    $('#facebook_com').show('slow')
    
  _showFriends = (e) ->
    e.preventDefault
    $('#my-modal').fadeIn('slow')
    $('#friend-box').fadeIn('slow')
    
  _hideFriends = (e) ->
    e.preventDefault
    $('#friend-box').fadeOut('slow')  
    $('#my-modal').fadeOut('slow')
    
  _showImages = (e) ->
    e.preventDefault
    $('#images-show').fadeIn('slow')
    
  _closeFlash = (e) ->
    e.preventDefault
    $('.close').remove()  
    
  $('.icon').click _removeLogin
  
  $('.facebook').click _showUpload
  
  $('#show_friends').click _showFriends
  
  $('#close').click _hideFriends
  
  $('#image-upload').click _showImages
  
  $('.close').click _closeFlash
  
  
#   
#   $('#fb').click (e) ->
#     e.preventDefault()
#     window.open(this.href, 'Facebook', 'width=500, height=500')
#     
#   _getFriends = () ->
#     console.log 'fb friends'
#     FB.api('/me/friends', (response) -> 
#       if(response.data)
#         $.each(response.data, (index, friend) ->
#           alert(friend.name + ' has id:' + friend.id)
#         )
#       else
#         alert("Error!")
#     )
#     
#     
#   $('#friends').click (e) ->
#     e.preventDefault()
#     self = this
#     self._getFriends
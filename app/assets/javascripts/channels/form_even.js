$(function(){
  $("form").on('submit',function(e){
      e.preventDefault();
      var content = $('[name=content]').val();
      var youtube = $('[name=youtube').val();
      App.room.speak(content,youtube);
      formData = "";
      $("form")[0].reset();
      $('input').removeAttr('data-disable-with');
  })
})

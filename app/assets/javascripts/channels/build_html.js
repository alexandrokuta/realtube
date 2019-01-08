function buildHtml(data) {
  if(data.content){
  var html = `<div class="message__content">${data.content}</div>`
  $('.chat__contents').append(html);
  $('.chat__contents').animate({scrollTop: $('.message__content')[0].scrollHeight});
}
  var newSrc = "https://www.youtube.com/embed/" + data.youtube
  $('#player').attr('src', newSrc);
}

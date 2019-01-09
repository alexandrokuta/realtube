function buildHtml(data) {
  if(data.content){
  var html = `<div class="message__content" data-user_id=${data.user.id}>${data.user.nickname}:${data.content}</div>`
  $('.chat__contents').append(html);
  $('.chat__contents').animate({scrollTop: $('.chat__contents')[0].scrollHeight});
}
  if(data.youtube){
  var newSrc = "https://www.youtube.com/embed/" + data.youtube
  $('#player').attr('src', newSrc);
}
}

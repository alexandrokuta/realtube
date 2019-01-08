$(function(){
  $("#play").on("click", function(){
　　videoControl("playVideo");
  });

  $("#pause").on("click", function(){
    videoControl("pauseVideo");
  });

  $("#stop").on("click", function(){
    videoControl("stopVideo");
  });

  $("#clear").on("click", function(){
    videoControl("clearVideo");
  });

  function videoControl(action){
    var $playerWindow = $('#popup-YouTube-player')[0].contentWindow;
    $playerWindow.postMessage('{"event":"command","func":"'+action+'","args":""}', '*');
  }
});

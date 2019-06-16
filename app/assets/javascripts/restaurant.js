$(document).on('turbolinks:load', function() {

  $('.rst-info__rst-header').each(function(){
    if($(this).text().length > 50){
      var trim = $(this).text().substr(0, 47) + '...';
      $(this).text(trim);
    };
  });

  $('.rst-info__rst-detail').each(function(){
    if($(this).text().length > 200){
      var trim = $(this).text().substr(0, 197) + '...';
      $(this).text(trim);
    };
  });

}); // jq ここまで

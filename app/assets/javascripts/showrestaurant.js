$(document).on('turbolinks:load', function() {
  $('#show-rst-detail').on('click', function(e){
    e.preventDefault();
    var url = $(this).attr('href');

    $.ajax({
      url: url,
      type: "GET",
      dataType: 'html',
    })
    .done(
      function(data){
        $('#rst-info').html(data);
      })
    .fail(
      alart('レストラン情報の取得に失敗しました')
    ) 
  });//end #show-rst-detail をクリックした時のイベント
});

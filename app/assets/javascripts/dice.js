$(document).ready(function(){
  var speed = 50;
  
  $('#footer__dice-btn').on('click', function(){
    $('.dice').show();
    $('.dice').animate({top: '20vh'}, 500);
    var i = 0;

    var timer = setInterval(function(){
      var rnd = Math.floor(Math.random() * 6) + 1;
      var dice = `<div class="dice__info__img">
                    <img width="150" src="/assets/dice_0${rnd}.png" class="dice__img">
                    <p class="dice__info__invisible">
                      おめでとう！
                      <span id="number" class="number">${rnd}</span>
                      マス進めるよ！
                    </p>
                  </div>`;

      $(".dice__info").html(dice);
      
      i++;

      $(".dice__img").css({transform: 'rotate(' + i * 15 + 'deg)'});
    }, speed); //サイコロの目がランダムで現れる

    setTimeout(function getDiceNum(){
      clearInterval(timer);
      $(".dice__img").css({
        transform: 'rotate(0deg)'
      });
      $(".dice__info__invisible").css({display: 'block'});
    }, 2500); //2.5秒後にランダム表示が止まる

    var count = 0;
    setTimeout(moveDown, 3000); // 3病後に動き出す

    function moveDown(){
      var diceNum = $("#number").text();
      var down = setInterval(function(){
        var location = $("#charactor").offset().top;
        $("html,body").animate({scrollTop: location + '5vh'});
        count++;
        if (count > diceNum - 1) clearInterval(down);
      },1000); //サイコロの目の数だけ繰り返したら終わり
    };

    setTimeout(function(){
      $('.dice').hide();
    },4000); //4秒後に非表示になる

  }); // サイコロのクリックイベント end
});

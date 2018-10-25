
var hoverArea = document.getElementById('animationArea');

hoverArea.onmouseover = function ()
{
    var animate = anime({
    targets: 'i.fas',
    loop: false,
    duration:1000,
    translateX:[
      {value:200, duration:500},
      {value:0, duration:800}
    ],
  });


}












new WOW().init();
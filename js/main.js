
(function(){ console.log("JS online");

/*var hoverArea = document.getElementById('animationArea');

hoverArea.onmouseover = function ()
{
    var animate = anime({
    targets: '#heroImage .fa-heart',
    loop: false,
    duration:900,
    translateX:[
      {value:200, duration:450},
      {value:0, duration:800}
    ],
  });
}*/

var lineDrawing = anime({
    targets: '#lineDrawing .lines path',
    strokeDashoffset: [anime.setDashoffset, 0],
    easing: 'easeInOutSine',
    duration: 1200,
    delay: function(el, i) { return i * 250 },
    direction: 'alternate',
    loop: true,
  });
  

new WOW().init(); //animation library 


//pie chart
let pieces = document.querySelectorAll(".data-ref");

function getData() {
	let targetURL = `./includes/connect.php?info=${this.id}`;

	fetch(targetURL) //getting data
    .then(res => res.json()) //turning result into a plain JS object
    .then(data => {
        
        showInfoData(data[0]);//run function to parse our data
    })
    .catch(function(error) {
        console.log(error); //log errors
    });
}

function showInfoData(data) { //lets see that data
	const { ages } = data;



    //console.log(ages);
    document.querySelector('.pieText').textContent = ages;  

}

pieces.forEach( piece =>  piece.addEventListener('click', getData)); //show data on page c:

}) ();
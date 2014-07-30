// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

function adjustIframes()
{
  $('iframe').each(function(){
    var
    $this       = $(this),
    proportion  = $this.data( 'proportion' ),
    w           = $this.attr('width'),
    actual_w    = $this.width();

    if ( ! proportion )
    {
        proportion = $this.attr('height') / w;
        $this.data( 'proportion', proportion );
    }

    if ( actual_w != w )
    {
        $this.css( 'height', Math.round( actual_w * proportion ) + 'px' );
    }
  });
}
$(window).on('resize load',adjustIframes);







// declare weddingdate and data variables
var weddingDate = new Date("Jul 31, 2014 15:00:00"),
    months, days, minutes, seconds,
    //declare Dom position
    countdown = document.getElementsByClassName("integer");
console.log(countdown);

// Set padding zero's to 1 number integers
function padZero(number){
  return String("0" + number).slice(-2);
}

setInterval(function() {
  var now = Date.now();
  var trackTime = (weddingDate - now)/1000;

  //convert miliseconds to readable date
  years = padZero(parseInt(trackTime / 31556926));
  trackTime = trackTime % 31556926;
  months = padZero(parseInt(trackTime / 2629743.83));
  trackTime = trackTime % 2629743.83;
  days = padZero(parseInt(trackTime / 86400));
  trackTime = trackTime % 86400;
  hours = padZero(parseInt(trackTime / 3600));
  trackTime = trackTime % 3600;
  minutes = padZero(parseInt(trackTime / 60));
  trackTime = trackTime % 60;
  seconds = padZero(parseInt(trackTime));
  //write date

  //countdown[0].innerHTML = months;
  countdown[0].innerHTML = days;
  countdown[1].innerHTML = hours;
  countdown[2].innerHTML = minutes;
  countdown[3].innerHTML = seconds;
}, 1000)

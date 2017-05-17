// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//=bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .
<script>
//Array of images which you want to show: Use path you want.
var images=new Array('assets/images/page-head-1.jpg','assets/images/page-head-2.jpg','assets/images/page-head-3.jpg');
var nextimage=0;
doSlideshow();

function doSlideshow(){
   if(nextimage>=images.length){nextimage=0;}
   $('.global-header')
   .css('background-image','url("'+images[nextimage++]+'")')
   .fadeIn(500,function(){
       setTimeout(doSlideshow,1000);
   });
}
</script>

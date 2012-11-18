/*  JavaScript Document                      */
/*  Created by Jared Sealey                  */
$(document).ready(function(){
  $('.nav_menu .dropdown').css('display','block');

  // the greater than sign targets children
  $('.nav_menu > ul').dropmenu({
    effect : 'slide',
    speed : 250,
    timeout: 0,
    nbsp: false
  });

  $('li').has('ul').find('> a').addClass('indicator');

});


	

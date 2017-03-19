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
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $('body').on('click touchstart', 'h2.notice', function(){
    $('h2.notice').hide();
  });

  $('body').on('click touchstart', '.show-lyrics', function() {
    $(this).removeClass("show-lyrics");
    $(this).addClass("hide-lyrics");
    $(this).next().css("display", "block");
  });

  $('body').on('click touchstart', '.hide-lyrics', function() {
    $(this).next().css("display", "none");
    $(this).removeClass("hide-lyrics");
    $(this).addClass("show-lyrics");
  });

});

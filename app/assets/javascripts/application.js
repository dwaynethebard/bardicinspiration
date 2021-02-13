// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery3
//= require jquery_ujs
//= require bootstrap 
//= require_tree

window.onscroll = function () {
    myFunction();
  };
  
  
  document.addEventListener("DOMContentLoaded", () => {
    sticky = navbar.offsetTop;
   
  });
  
  function myFunction() {
    sticky = 180;
    var navbar = document.getElementsByClassName("navbar")[0];
    if (window.pageYOffset >= sticky) {
      navbar.classList.add("sticky");
      document.getElementById("store-header").classList.add("extra-margin");
    } else {
      navbar.classList.remove("sticky");
      document.getElementById("store-header").classList.remove("extra-margin");
    }
  }
  

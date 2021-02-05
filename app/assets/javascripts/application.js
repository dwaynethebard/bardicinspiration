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
//= require bootstrap.min   


window.onscroll = function () {
    myFunction();
  };
  
  sticky = 350;
  document.addEventListener("DOMContentLoaded", () => {
    sticky = navbar.offsetTop;
    populateCarousel();
  });
  
  function myFunction() {
    var navbar = document.getElementById("navbar");
  
    if (window.pageYOffset >= sticky) {
      navbar.classList.add("sticky");
    } else {
      navbar.classList.remove("sticky");
    }
  }
  
  function populateCarousel() {
    $(".carousel-showmanymoveone .item").each(function () {
      var itemToClone = $(this);
  
      for (var i = 1; i < 6; i++) {
        itemToClone = itemToClone.next(); // wrap around if at end of item collection
  
        if (!itemToClone.length) {
          itemToClone = $(this).siblings(":first");
        } // grab item, clone, add marker class, add to collection
  
        itemToClone
          .children(":first-child")
          .clone()
          .addClass("cloneditem-" + i)
          .appendTo($(this));
      }
    });
  }
  
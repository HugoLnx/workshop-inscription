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
//= require turbolinks
//= require_tree .
function on(event_name, element, func) {
  if (element.addEventListener) {
    element.addEventListener(event_name, func);
  }

  if (element.attachEvent) {
    element.addEventListener("on"+event_name, func);
  }
}

var btn = document.getElementById("botao-inscricao");
on("click", btn, function() {
  document.location.href = document.location.href + "#inscricao";
  document.location.hash = "#inscricao";
});

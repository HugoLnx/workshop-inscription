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

(function() {
  function on(event_name, element, func) {
    if (element.addEventListener) {
      element.addEventListener(event_name, func);
    }

    if (element.attachEvent) {
      element.addEventListener("on"+event_name, func);
    }
  }

  function goToElementWithId(elementId) {
    document.location.href = document.location.href + "#" + elementId;
    document.location.hash = "#" + elementId;
  }

  function isEmpty(element) {
    var text = element.textContent || element.innerText || "";
    return text.trim() === "";
  }

  var btn = document.getElementById("botao-inscricao");
  var error_msg = document.getElementById("inscription_error");

  on("click", btn, function() {
    goToElementWithId("inscricao");
  });

  if (!isEmpty(error_msg)) {
    goToElementWithId("inscricao");
  }
}());

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap"
import "../stylesheets/application"
import "@fortawesome/fontawesome-free/css/all"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


$(document).on("turbolinks:load", function(){
  $("#contact-button").on("click", function()
  {
    alert("Recebemos o seu contato!");
  });
});

$(document).on("turbolinks:load", function(){
  $("#doubt-button").on("click", function()
  {
    alert("Sua dúvida foi enviada com sucesso!");
  });
});

$(document).on("turbolinks:load", function(){
  $("#idea-button").on("click", function(){
    alert("Sua ideia foi enviada com sucesso!");
  });
});

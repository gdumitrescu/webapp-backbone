#global require
"use strict"

require.config
  shim:
    underscore:
      exports: "_"

    backbone:
      deps: ["underscore", "jquery"]
      exports: "Backbone"

    bootstrap:
      deps: ["jquery"]
      exports: "jquery"

    handlebars:
      exports: "Handlebars"

  paths:
    jquery: "../bower_components/jquery/jquery"
    backbone: "../bower_components/backbone-amd/backbone"
    underscore: "../bower_components/underscore-amd/underscore"
    bootstrap: "vendor/bootstrap"
    text: "../bower_components/requirejs-text/text"
    handlebars: "../bower_components/handlebars.js/handlebars"

require ["backbone"], (Backbone) ->
  Backbone.history.start()

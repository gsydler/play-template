###

  Sébastien Pasche
  01.10.2012
  Basic application to update and itemlist

###
define [
  'logger'
  'view/ListView'
], (log, ListView) ->
  class App
    initialize: ->
      log.info "we are live!"
      new ListView()

  new App()
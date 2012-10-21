###
  Sébastien Pasche
  01.10.2012
  an list item view
###
define [
  'logger'
  'backbone'
  'model/item/Item'
  'model/item/List'
  'view/ItemView'
], (log, bb, Item, List, ItemView) ->
  class ListView extends bb.View

    el: $ '#insert'  

    initialize: =>
      log.info 'initialized the view for a list of Item!'
      @collection = new List
      @collection.bind 'add', @appendItem
      @counter = 0
      @render()

    render: =>
      $(@el).append '<div class="span9"><div class="btn" id="btnadditem">Add List Item</div></div>'

    addItem: =>
      @counter++
      item = new Item
      item.set part2: "#{item.get 'part2'} #{@counter}"
      @collection.add item

    appendItem: (item)  =>
      item_view = new ItemView model: item
      $(@el).append item_view.render().el

    events: 'click #btnadditem': 'addItem'
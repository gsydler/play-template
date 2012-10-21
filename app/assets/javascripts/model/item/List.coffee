###
	Sébastien Pasche
	01.10.2012
	A list of item
###
define [
	'logger'
	'backbone'
	'model/item/Item'
], (log, bb, Item) ->
	# A list of item
    class List extends bb.Collection
    	initialize: -> 
    		log.info "initialized a list of Items!"

    	model: Item
#
#	Sébastien Pasche
#	01.10.2012
#	This a simple item composed of two part and an id
#
define ['logger', 'backbone'], (log, bb) ->
	# An Item
    class Item extends bb.Model
    	initialize: -> 
    		log.info "initialized an Itiem!"

    	defaults:
      		part1: 'A simple sentence'
      		part2: 'seted by default'
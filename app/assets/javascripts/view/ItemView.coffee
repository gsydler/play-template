###
	Sébastien Pasche
	01.10.2012
	an item view
###
define [
	'logger'
	'backbone'
	'text!template/line_template.html'
], (log, bb, line_template) ->
	class ItemView extends bb.View
		initialize: =>
			#_.bindAll @
			log.info 'initialized the view for an Item!'
			@model.bind 'change', @render
			@model.bind 'remove', @unrender
			@template = _.template(line_template)

		render: =>
			$(@el).html(@template(@model.toJSON()))
			@

		unrender: =>
			$(@el).remove()

		swap: =>
			@model.set
				part1: @model.get 'part2'
				part2: @model.get 'part1'

		remove: => 
			@model.destroy()

		events:
			'click #swap': 'swap'
			'click #delete': 'remove'
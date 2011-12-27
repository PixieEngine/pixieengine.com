namespace "Pixie.Editor.Tile.Views", (Views) ->
  Models = Pixie.Editor.Tile.Models

  class Views.ScreenInstance extends Backbone.View
    className: "instance"
    tagName: "img"

    initialize: ->
      # Force jQuery
      @el = $(@el)

      @el.attr "data-cid", @model.cid

      @model.bind 'change', @render

      @render()

    render: =>
      @el.attr "src", @model.get "src"
      
      @el.css
        left: @model.get "x"
        top: @model.get "y"

      return this

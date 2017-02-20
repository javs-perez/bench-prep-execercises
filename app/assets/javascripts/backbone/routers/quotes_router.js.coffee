class BenchPrep.Routers.QuotesRouter extends Backbone.Router
  initialize: (options) ->
    @quotes = new BenchPrep.Collections.QuotesCollection()
    @quotes.reset options.quotes

  routes:
    "index"    : "index"
    ".*"       : "index"

  index: ->
    @view = new BenchPrep.Views.Quotes.IndexView(collection: @quotes)
    $("#quotes").html(@view.render().el)

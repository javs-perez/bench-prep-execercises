class QuoteController < ApplicationController
  def index
    @quotes = Quote.all
  end
end

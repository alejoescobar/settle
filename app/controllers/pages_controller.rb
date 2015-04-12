class PagesController < ApplicationController
  def index
    @lastconcepts =  Concept.last(5)
  end
end

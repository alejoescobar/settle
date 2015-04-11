class DashboardController < ApplicationController
  def index
    @concepts = Concept.all
  end
end

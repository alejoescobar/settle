class DashboardController < ApplicationController
  def index
    @concepts = Concept.all.where(user_id: current_user)
    @concepts_by_date = @concepts.group_by { |concept| concept.date.strftime("%F") }
  end
end

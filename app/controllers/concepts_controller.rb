class ConceptsController < ApplicationController
    before_filter :fetch_concept, only: [:edit, :update, :destroy, :show ]

  def index
    @concepts = Concept.all
  end

  def new
    @concept = Concept.new
  end

  def create
    @concept = Concept.new(concepts_params)
    @concept.user = current_user
    @concept.save
    redirect to @concept
  end

  def edit
    # @concept = Concept.find(params[ :id ])
  end

  def update
    # @concept = Concept.find(params[ :id ])
    @concept.update(concepts_params)
    redirect to @concept
  end

  def destroy
    # @concept = Concept.find(params[ :id ])
    @concept.destroy
    redirect_to action: 'index'
  end

  def show
    # @concept = Concept.find(params[ :id ])
  end

  private
  def fetch_concept
     @concept = Concept.find(params[ :id ])
  end
  def concepts_params
    params.require(:concept).permit(:concept, :date,:description,:difficulty,:state)
  end
end

class PublicController < ApplicationController
  def concept
    @concept = Concept.find(params[ :id ])
  end
   def user
    @user = User.find(params[ :id ])
  end
end

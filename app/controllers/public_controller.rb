class PublicController < ApplicationController
  def concept
    @concept = Concept.find(params[ :id ])
  end
   def user
    @user = User.find(params[ :id ])
    @concepts = Concept.all.where(user_id: params[ :id ])
  end
end

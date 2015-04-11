class AddUserToConcept < ActiveRecord::Migration
  def change
    add_reference :concepts, :user, index: true
    add_foreign_key :concepts, :users
  end
end

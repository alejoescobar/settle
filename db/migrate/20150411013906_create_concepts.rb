class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :concept
      t.datetime :date
      t.text :description
      t.integer :difficulty
      t.integer :state

      t.timestamps null: false
    end
  end
end

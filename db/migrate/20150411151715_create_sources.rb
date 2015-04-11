class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name
      t.string :url
      t.references :concept, index: true

      t.timestamps null: false
    end
    add_foreign_key :sources, :concepts
  end
end

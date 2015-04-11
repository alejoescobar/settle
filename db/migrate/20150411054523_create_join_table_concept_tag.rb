class CreateJoinTableConceptTag < ActiveRecord::Migration
  def change
    create_join_table :concepts, :tags do |t|
      t.index [:concept_id, :tag_id]
      t.index [:tag_id, :concept_id]
    end
  end
end

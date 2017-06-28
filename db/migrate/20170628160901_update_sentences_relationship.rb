class UpdateSentencesRelationship < ActiveRecord::Migration[5.1]
  def change
    add_column :sentences, :story_id, :integer
  end
end

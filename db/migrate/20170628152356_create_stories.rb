class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.column :title, :string
      t.timestamp
    end
  end
end

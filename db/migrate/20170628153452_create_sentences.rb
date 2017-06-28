class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.column :author, :string
      t.column :content, :string
      t.column :image, :string
      t.timestamp
    end
  end
end

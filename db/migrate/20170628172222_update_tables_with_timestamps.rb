class UpdateTablesWithTimestamps < ActiveRecord::Migration[5.1]
  def change
    add_column(:stories, :created_at, :datetime)
    add_column(:stories, :updated_at, :datetime)

    add_column(:sentences, :created_at, :datetime)
    add_column(:sentences, :updated_at, :datetime)
  end
end

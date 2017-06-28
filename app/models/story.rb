class Story < ActiveRecord::Base
  has_many :sentences
  validates :title, :presence => true

  scope :sortByNewest, -> { order(created_at: :desc)}
  scope :sortByCoolFactor, -> {(
    select("stories.title, stories.id, stories.created_at, count(sentences.id) as sentences_count")
    .joins(:sentences)
    .group("stories.id")
    .order("sentences_count DESC")
    )}

end

class Sentence < ActiveRecord::Base
  belongs_to :story

  validates :author, :presence => true
  validates :content, :presence => true
  validates :image, :presence => true

  validates :content, length: { minimum: 2 }
  validates :content, length: { maximum: 200 }
end

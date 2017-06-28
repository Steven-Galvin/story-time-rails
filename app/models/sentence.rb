class Sentence < ActiveRecord::Base
  belongs_to :story

  validates :author, :presence => true
  validates :content, :presence => true
  validates :image, :presence => true
end

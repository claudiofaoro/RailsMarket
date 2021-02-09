class Content < ApplicationRecord
  belongs_to :user
  
  has_one_attached :cover
  validates :cover, attached: true, content_type: [:png, :jpg, :jpeg]

  has_many_attached :attachment
  validates :attachment, attached: true, content_type: [:png, :jpg, :jpeg]
end

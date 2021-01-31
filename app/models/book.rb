class Book < ApplicationRecord
  belongs_to :author, touch: true
  belongs_to :publisher
  belongs_to :genre

  validates :title, :image_url, presence: true
end

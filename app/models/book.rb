class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher
  belongs_to :genre

  validates :title, :image_url, presence: true
end

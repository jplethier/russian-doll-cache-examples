class Book < ApplicationRecord
  belongs_to :author

  validates :title, :image_url, presence: true
end

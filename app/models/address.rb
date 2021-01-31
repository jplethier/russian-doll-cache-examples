class Address < ApplicationRecord
  belongs_to :author, touch: true

  validates :country, presence: true
end

class Address < ApplicationRecord
  belongs_to :author

  validates :country, presence: true
end

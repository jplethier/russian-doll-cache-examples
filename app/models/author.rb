class Author < ApplicationRecord
  has_many :books
  has_many :contacts
  has_one :address

  validates :name, presence: true
end

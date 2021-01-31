class Contact < ApplicationRecord
  belongs_to :author

  enum contact_type: %i[whatsapp phone email]

  validates :contact_type, :contact_value, presence: true
end

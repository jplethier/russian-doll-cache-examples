class Contact < ApplicationRecord
  belongs_to :author

  enum contact_type: %i[whatsapp phone email]

  validats :contact_type, :contact_value, presence: true
end

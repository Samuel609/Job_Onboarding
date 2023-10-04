class ContactInformation < ApplicationRecord
    validates :country, :city, :subcity, :phone_number, presence: true
    # validates :phone_number, format: { with: /\A\d{10}\z/
end

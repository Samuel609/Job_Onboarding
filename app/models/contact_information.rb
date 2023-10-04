class ContactInformation < ApplicationRecord
    validates :country, :city, :subcity, :phone_number, presence: true

end

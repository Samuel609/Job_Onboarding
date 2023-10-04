class User < ApplicationRecord
    has_secure_password
    belongs_to :contact_information
    belongs_to :role

    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true
    # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, length: { minimum: 8 }
end

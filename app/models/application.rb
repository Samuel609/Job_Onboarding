class Application < ApplicationRecord
    belongs_to :user
    belongs_to :job
    
    ACCEPTED = "Accepted".freeze
    PENDING = "Pending".freeze
    REJECTED = "Rejected".freeze

    STATUS = [ACCEPTED,PENDING,REJECTED].freeze

    validates :status, :deadline, presence: true
    validates :status, inclusion: {in: STATUS}

end

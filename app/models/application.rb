class Application < ApplicationRecord
    belongs_to :user
    belongs_to :job
    
    ACCEPTED = "Accepted".freeze
    PENDING = "Pending".freeze
    REJECTED = "Rejected".freeze

    STATUS = [ACCEPTED,PENDING,REJECTED].freeze

    validates :user, :job, :status, :deadline, presence: true
    validates :status, inclusion: {in: STATUS}

end

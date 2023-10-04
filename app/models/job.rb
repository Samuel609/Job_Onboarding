class Job < ApplicationRecord
    AVAILABLE = "Available".freeze 
    NOT_AVAILABLE = "Not_Available".freeze 
    AVAILABILITY = [Available, NOT_AVAILABLE].freeze

    REMOTE_TEMPORARY = "Remote_Temporary".freeze
    REMOTE_PERMANENT = "Remote_Permanent".freeze
    ONSIGHT_TEMPORARY = "Onsight_Temporary".freeze
    ONSIGHT_PERMANENT = "Onsight_Permanent".freeze
    TYPE = [REMOTE_PERMANENT, REMOTE_TEMPORARY, ONSIGHT_PERMANENT, ONSIGHT_TEMPORARY].freeze

    MEDICINE = "Medicine".freeze
    SOCIAL_WORK = "Social_Work".freeze
    STEM = "Stem".freeze
    CATEGORY = [MEDICINE, SOCIAL_WORK, STEM].freeze

    belongs_to :contact_information
    validates :lowest_salary, :highest_salary, numericality: { greater_than: 0 }
    validates :title, :category, :availability, :type, :description, :cv, :lowest_salary, :highest_salary, :criteria, :logo, presence: true
    validates :availability, inclusion: {in: AVAILABILITY}
    validates :type, inclusion: {in: TYPE}
    validates :category, inclusion: {in: CATEGORY}


end

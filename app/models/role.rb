class Role < ApplicationRecord
    EMPLOYEE = "Employee".freeze
    EMPLOYER = "Employer".freeze
    NAME = [EMPLOYEE, EMPLOYER].freeze

    validates :name, presence: true, inclusion: {in: NAME}
end

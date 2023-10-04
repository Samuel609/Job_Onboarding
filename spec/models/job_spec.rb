require 'rails_helper'

RSpec.describe Job, type: :model do
  attributes = [
    {contact_information: :belong_to},
    {title: %i[presence] },
    {category: [:presence, {inclusion: [[:in_array, Job::CATEGORY]]}]},
    {type: [:presence, {inclusion: [[:in_array, Job::TYPE]]}]},
    {availability: [:presence, {inclusion: [[:in_array, Job::AVAILABILITY]]}]},
    {description: %i[presence] },
    {cv: %i[presence] },
    {lowest_salary: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {highest_salary: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {criteria: %i[presence] },
    {logo: %i[presence] },

  ]
  include_examples('model_shared_spec', :job, attributes)
end

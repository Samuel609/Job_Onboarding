require 'rails_helper'

RSpec.describe Application, type: :model do
  attributes = [
    {user: :belong_to},
    {job: :belong_to},
    {deadline: %i[presence] },
    {status: [:presence, {inclusion: [[:in_array, Application::STATUS]]}]},
  ]
  
  include_examples('model_shared_spec', :application, attributes)
end

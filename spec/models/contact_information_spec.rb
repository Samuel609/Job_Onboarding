require 'rails_helper'

RSpec.describe ContactInformation, type: :model do
  attributes = [
    {country: %i[presence] },
    {city: %i[presence] },
    {subcity: %i[presence] },
    {phone_number: %i[presence] },

  ]
  include_examples('model_shared_spec', :contact_information, attributes)
end

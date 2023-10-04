require 'rails_helper'

RSpec.describe User, type: :model do
  attributes = [
    { contact_information: :belong_to },
    { role: :belong_to },
    { name: %i[presence] },
    { email: %i[presence uniqueness] },
    { password: %i[presence length] },
    # { password: [:presence, {length: [[:minimum, 8]]}] }
  ]
  include_examples("model_shared_spec", :user, attributes)
end

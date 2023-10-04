require 'rails_helper'

RSpec.describe Role, type: :model do
  attributes = [
    { name: [:presence, {inclusion: [[:in_array, Role::NAME]]}] }
    ]
    include_examples("model_shared_spec", :role, attributes)
end

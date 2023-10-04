FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password(min_length: 8) }
    contact_information_id { create(:contact_information).id}
    role_id { create(:role).id }

  end
end

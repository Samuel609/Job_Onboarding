FactoryBot.define do
  factory :contact_information do
    country { Faker::Address.country }
    city { Faker::Address.city }
    subcity { Faker::Lorem.word }
    phone_number { 1 }





  end
end

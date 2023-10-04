FactoryBot.define do
  factory :job do
    title { Faker::Lorem.word }
    category { Job::STEM }
    availability { Job::AVAILABLE }
    type { Job::ONSIGHT_PERMANENT }
    description { Faker::Lorem.sentence }
    cv { Faker::Lorem.sentence }
    lowest_salary { 1 }
    highest_salary { 2 }
    criteria { Faker::Lorem.sentence }
    logo { Faker::Lorem.sentence }
    contact_information


  end
end

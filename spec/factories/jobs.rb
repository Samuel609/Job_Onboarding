FactoryBot.define do
  factory :job do
    title { Faker::Lorem.word }
    category { JOb::Stem }
    availability { Job::Available }
    type { Job::Onsight_Permanent }
    description { Faker::Lorem.sentence }
    cv { Faker::Lorem.sentence }
    lowest_salary { 1 }
    highest_salary { 2 }
    criteria { Faker::Lorem.sentence }
    logo { Faker::Lorem.sentence }
    contact_information


  end
end

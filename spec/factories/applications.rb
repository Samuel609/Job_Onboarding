FactoryBot.define do
  factory :application do
    status { Application::ACCEPTED }
    deadline { Faker::Date.backward(days: 22) }
    user
    job


  end
end

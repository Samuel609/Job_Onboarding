FactoryBot.define do
  factory :application do
    status { Application::Accepted }
    deadline { Faker::Date.backward(days: 22) }
    user
    job


  end
end

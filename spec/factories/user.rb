FactoryGirl.define do
  factory :user do
    email "jsmith@example.com"
    password "Hunter22$"
    confirmed_at { 1.week.ago }
  end
end

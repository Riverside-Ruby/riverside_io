FactoryGirl.define do
  factory :credential do
    username "hello"
    password "Hunter22$"
    expiration { 1.week.from_now }
  end
end

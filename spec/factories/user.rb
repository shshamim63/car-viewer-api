FactoryBot.define do
  factory :user do
    username { 'Peter Fernandes' }
    sequence(:email) { |n| "username#{n}@email.com" }
    password { '123456' }
  end
end

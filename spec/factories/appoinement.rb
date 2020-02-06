FactoryBot.define do
  factory :appointment do
    date { 'MyString' }
    time { 'MyString' }
    user { create :user }
    car { create :car }
  end
end
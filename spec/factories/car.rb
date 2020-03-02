FactoryBot.define do
  factory :car do
    sequence(:modelname) { |n| "MyString #{n}" }
    fee { 29 }
    payable { 295 }
    duration { 2 }
    representative { 'Seller' }
    description { 'Ducimus mollitia deserunt. Dicta et corporis.' }
  end
end

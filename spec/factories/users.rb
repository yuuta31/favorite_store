FactoryBot.define do
  pass = Faker::Internet.password(8)

  factory :user do
    image                 {'aaa.jpg'}
    nickname              {Faker::Name.name}
    email                 {Faker::Internet.email}
    # sequence(:email) { |n| "tester#{n}@example.com" }
    password              {pass}
    password_confirmation {pass}
  end
end
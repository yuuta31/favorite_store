FactoryBot.define do

  factory :user do
    image                 {'aaa.jpg'}
    nickname              {Faker::Name.name}
    email                 {Faker::Internet.email}
    password              {'pass12'}
    password_confirmation {'pass12'}
  end
end
FactoryBot.define do
  factory :admin do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"000000"}
    password_confirmation {"000000"}

    after(:create) do |admin|
      create(:post, admin: admin)
    end
  end
end

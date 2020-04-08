FactoryBot.define do
  factory :post do
    admin
    name       {"test"}
    payment    {"test"}
    station    {"test"}
    rest_day   {"test"}
    place      {"test"}
    open_time  {"test"}
    store_url  {"test"}

    after(:create) do |post|
      create(:image, post: post)
    end
  end
end

FactoryBot.define do
  factory :comment do
    user
    post
    title   {"test"}
    rate    {3.5}
    text    {"testtext"}
  end
end

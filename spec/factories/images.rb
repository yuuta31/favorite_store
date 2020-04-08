FactoryBot.define do

  factory :image do
    post
    image {Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/tianshu-liu-SBK40fdKbAg-unsplash.jpg'))}
  end

end

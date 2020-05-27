# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(nickname: Rails.application.credentials[:admin][:nickname],
              email: Rails.application.credentials[:admin][:email],
              password: Rails.application.credentials[:admin][:password],
              password_confirmation: Rails.application.credentials[:admin][:password_confirmation],
              administrator: true)

array = %w(新宿 恵比寿 渋谷 六本木 西麻布 和食 洋食 中華 イタリアン フレンチ 地中海料理 その他 個室あり 全面禁煙 喫煙席あり クレジットカード可 個室あり おしゃれ)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}
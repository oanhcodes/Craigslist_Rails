# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

15.times do
  Category.create!(title: Faker::Hipster.word)
  Article.create!(category_id: Category.all.sample.id, title: Faker::Hipster.word, price: Faker::Number.number(2), description: Faker::Lorem.sentence, email: Faker::Internet.email)
end

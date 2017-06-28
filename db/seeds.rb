# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
story_list = [
  "The Best Adventure EVER",
  "The Goat Who Could",
  "Philosophy of James",
  "Horse",
  "Birch Horse",
  "Cherry HOOOORSE"
]

story_list.each do |title|
  Story.create( title: title)
end

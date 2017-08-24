# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lesson.destroy_all

lesson1 = Lesson.create(title: 'Poker Basics')
lesson2 = Lesson.create(title: 'Understanding further')
lesson3 = Lesson.create(title: 'Advanced')

# LESSON #1 === POKER BASICS ===
category1 = Category.new(name: "How to play", description: "Not yet")
category1.lesson = lesson1
category1.save!

exercise1 = Exercise.new(name: "Not yey", live: true)
exercise1.category = category1
exercise1.save!

category2 = Category.new(name: "Hand Rankings", description: "Not yet")
category2.lesson = lesson1
category2.save!

exercise2 = Exercise.new(name: "Not yey", live: true)
exercise2.category = category1
exercise2.save!

category3 = Category.new(name: "Player Positions", description: "Not yet")
category3.lesson = lesson1
category3.save!

exercise3 = Exercise.new(name: "Not yey", live: true)
exercise3.category = category1
exercise3.save!



# LESSON #2 === UNDERSTANDING FURTHER ====
category1 = Category.new(name: "How to play", description: "Not yet")
category1.lesson = lesson2
category1.save!

exercise1 = Exercise.new(name: "Not yey", live: true)
exercise1.category = category1
exercise1.save!

category2 = Category.new(name: "Hand Rankings", description: "Not yet")
category2.lesson = lesson2
category2.save!

exercise2 = Exercise.new(name: "Not yey", live: true)
exercise2.category = category1
exercise2.save!

category3 = Category.new(name: "Player Positions", description: "Not yet")
category3.lesson = lesson2
category3.save!

exercise3 = Exercise.new(name: "Not yey", live: true)
exercise3.category = category1
exercise3.save!

# LESSON #3 === ADVANCED ====
category1 = Category.new(name: "How to play", description: "Not yet")
category1.lesson = lesson3
category1.save!

exercise1 = Exercise.new(name: "Not yey", live: true)
exercise1.category = category1
exercise1.save!

category2 = Category.new(name: "Hand Rankings", description: "Not yet")
category2.lesson = lesson3
category2.save!

exercise2 = Exercise.new(name: "Not yey", live: true)
exercise2.category = category1
exercise2.save!

category3 = Category.new(name: "Player Positions", description: "Not yet")
category3.lesson = lesson3
category3.save!

exercise3 = Exercise.new(name: "Not yey", live: true)
exercise3.category = category1
exercise3.save!




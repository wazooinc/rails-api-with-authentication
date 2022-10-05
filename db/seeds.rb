# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.destroy_all

statuses = %w[started backlog done]

20.times do |index|
    Todo.create!(title: Faker::Movie.title,
                 status: statuses[1 + rand(statuses.count)],
                 is_completed: [true, false].sample
                )
end

puts "Created #{Todo.count} Todo items"

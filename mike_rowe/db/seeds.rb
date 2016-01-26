# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
1.times do
Teacher.create(name: "Zell", email: "zell@gmail.com", password: "zell", avatar: Faker::Avatar.image("my-own-slug", "50x50", "jpg"), admin: true)
end

1.times do
Teacher.create(name: "Chris", email: "chris@gmail.com", password: "chris", avatar: Faker::Avatar.image("my-own-slug", "50x50", "jpg"), admin: false)
end

10.times do
	Teacher.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password, avatar: Faker::Avatar.image("my-own-slug", "50x50", "jpg"))
end

10.times do
	Student.create(name: Faker::Name.name, gender: ["M", "F"].sample, age: Faker::Number.between(1, 14), grade: Faker::Number.between(1, 8), detentions: Faker::Number.between(0, 4), avatar: Faker::Avatar.image("my-own-slug", "50x50", "jpg"))
end
